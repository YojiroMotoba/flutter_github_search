import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/view_model/async_github_search_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import './../widgets/search_bar.dart' as search_bar;
import '../../data/model/github/search_repository_item_model.dart';
import '../../image_cache_manager.dart';

class GithubSearchPage extends ConsumerWidget {
  const GithubSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: search_bar.SearchBar(
        onSubmitted: (String query) {
          ref
              .read(asyncGithubSearchPageViewModelProvider.notifier)
              .firstLoading(query);
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
    ref.watch(asyncGithubSearchPageViewModelProvider
        .select((value) => value.isLoading));
    final viewModel = ref.read(asyncGithubSearchPageViewModelProvider.notifier);
    if (viewModel.isFirstLoading()) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return const _GithubRepositoryList();
  }
}

class _GithubRepositoryList extends ConsumerWidget {
  const _GithubRepositoryList();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items =
        ref.read(asyncGithubSearchPageViewModelProvider).value?.items ??
            List<SearchRepositoryItemModel>.empty();
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
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
