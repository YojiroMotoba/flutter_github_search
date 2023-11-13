import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/page/async_github_search_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './../widgets/search_bar.dart' as search_bar;

class GithubSearchPage extends ConsumerWidget {
  const GithubSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: search_bar.SearchBar(
        onSubmitted: (String query) {
          ref
              .read(asyncGithubSearchPageViewModelProvider.notifier)
              .search(query);
        },
      ),
      body: const Center(
        child: Text('Github Search'),
      ),
    );
  }
}
