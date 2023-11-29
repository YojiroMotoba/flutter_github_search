import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/router.dart';
import 'package:flutter_github_search/presentation/view_model/github_search_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/model/github/search_repository_item_model.dart';
import '../image_cache_manager.dart';
import './../widgets/search_bar.dart' as search_bar;

class GithubSearchPage extends ConsumerWidget {
  const GithubSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: search_bar.SearchBar(
        onSubmitted: (String query) {
          final notifier = ref.read(githubSearchPageState.notifier);
          notifier.state = notifier.state.copyWith(query: query);
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
    final query =
        ref.watch(githubSearchPageState.select((value) => value.query));
    if (query.isEmpty) {
      return Column(
        children: [
          const Center(
            child: Text('Please enter a search term'),
          ),
          ElevatedButton(
            onPressed: () {
              const GithubSearchPageRoute().push(context);
            },
            child: const Text('next page'),
          ),
        ],
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
          loading: () => const _Loading(),
          data: (_) => const _GithubRepositoryList(),
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
        final item = items[index];
        final listViewItem = _ListViewItem(
          searchRepositoryItemModel: item,
        );
        if (index == items.length - 1) {
          final state = ref.read(githubSearchPageState);
          return ref
              .watch(
                fetchRepositoriesProvider(
                  query: state.query,
                  page: state.currentPage + 1,
                ),
              )
              .when(
                loading: () => Column(
                  children: [
                    listViewItem,
                    const _Loading(),
                  ],
                ),
                data: (_) => listViewItem,
                error: (error, stackTrace) {
                  debugPrint('error: $error');
                  debugPrint('stackTrace: $stackTrace');
                  return const Center(
                    child: Text('error'),
                  );
                },
              );
        }
        return listViewItem;
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
            _PushDetailPageButton(
              id: searchRepositoryItemModel.id,
            ),
          ],
        ),
      ],
    );
  }
}

class _PushDetailPageButton extends StatelessWidget {
  const _PushDetailPageButton({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        GithubRepositoryDetailPageSearchPageRoute(id).push(context);
      },
      child: const Text('detail page'),
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

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
