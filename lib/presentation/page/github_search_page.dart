import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/view_model/github_search_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import './../widgets/search_bar.dart' as search_bar;
import '../../data/model/github/search_repository_item_model.dart';
import '../../image_cache_manager.dart';

final _queryProvider = StateProvider((ref) => '');

class GithubSearchPage extends ConsumerWidget {
  const GithubSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: search_bar.SearchBar(
        onSubmitted: (String query) {
          ref.watch(_queryProvider.notifier).state = query;
        },
      ),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(_queryProvider);
    if (query.isEmpty) {
      return const Center(
        child: Text('Please enter a search term'),
      );
    }
    return ref
        .watch(
          fetchRepositoriesProvider(
            query: query,
            page: 1,
          ),
        )
        .when(
          data: (_) {
            return const _GithubRepositoryList();
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, stackTrace) {
            debugPrint('error: $error');
            debugPrint('stackTrace: $stackTrace');
            return const Center(
              child: Text('error'),
            );
          },
        );
  }
}

class _GithubRepositoryList extends ConsumerWidget {
  const _GithubRepositoryList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(githubSearchPageState
        .select((value) => value.searchRepositoriesModel.items));
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        if (index == items.length - 1) {
          return ref
              .watch(
                fetchRepositoriesProvider(
                  query: ref.watch(_queryProvider),
                  page: ref.watch(
                    githubSearchPageState
                        .select((value) => value.currentPage + 1),
                  ),
                ),
              )
              .when(
                data: (_) {
                  return const SizedBox.shrink();
                },
                error: (error, stackTrace) {
                  debugPrint('error: $error');
                  debugPrint('stackTrace: $stackTrace');
                  return const Center(
                    child: Text('error'),
                  );
                },
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
        }
        final item = items[index];
        return _ListViewItem(
          searchRepositoryItemModel: item,
        );
      },
    );
  }
}

class _ListViewItem extends StatelessWidget {
  const _ListViewItem({
    required this.searchRepositoryItemModel,
  });

  final SearchRepositoryItemModel searchRepositoryItemModel;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      key: PageStorageKey(searchRepositoryItemModel.id),
      title: Text(searchRepositoryItemModel.fullName),
      expandedAlignment: Alignment.topLeft,
      childrenPadding: const EdgeInsets.all(16),
      children: [
        Column(
          children: [
            _ListViewItemFirstRow(
              avatarUrl: searchRepositoryItemModel.owner.avatarUrl,
              fullName: searchRepositoryItemModel.fullName,
              language: searchRepositoryItemModel.language,
            ),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () async {
                final url = searchRepositoryItemModel.htmlUrl;
                if (!await launchUrl(
                  Uri.parse(url),
                  mode: LaunchMode.externalApplication,
                )) {
                  throw Exception('Could not launch $url');
                }
              },
              child: const Text('Go to GitHub External Browser'),
            ),
          ],
        ),
      ],
    );
  }
}

class _ListViewItemFirstRow extends StatelessWidget {
  const _ListViewItemFirstRow({
    required this.avatarUrl,
    required this.fullName,
    required this.language,
  });

  final String avatarUrl;
  final String fullName;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _AvatarImageContainer(
          child: CachedNetworkImage(
            cacheManager: imageCacheManager,
            imageUrl: avatarUrl,
            imageBuilder: (context, image) => CircleAvatar(
              backgroundImage: image,
              radius: 150,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(fullName),
        Text('language : $language'),
      ],
    );
  }
}

class _AvatarImageContainer extends StatelessWidget {
  const _AvatarImageContainer({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Center(child: child),
    );
  }
}
