import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GithubRepositoryDetailPage extends ConsumerWidget {
  const GithubRepositoryDetailPage(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github Repository Detail $id'),
      ),
      body: _Body(id),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body(this.id);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text('Github Repository Detail $id');
  }
}
