import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import './../widgets/search_bar.dart' as search_bar;

class GithubSearchPage extends ConsumerWidget {
  const GithubSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: search_bar.SearchBar(
        onSubmitted: (String query) {
        },
      ),
      body: const Center(
        child: Text('Github Search'),
      ),
    );
  }
}
