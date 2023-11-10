import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GithubSearchPage extends ConsumerWidget {
  const GithubSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Search'),
      ),
      body: const Center(
        child: Text('Github Search'),
      ),
    );
  }
}
