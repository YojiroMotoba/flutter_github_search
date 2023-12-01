import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GithubRepositoryDetailPage extends ConsumerWidget {
  const GithubRepositoryDetailPage(this._id, {super.key});

  final int _id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github Repository Detail $_id'),
      ),
      body: _Body(_id),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body(this._id);

  final int _id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text('Github Repository Detail $_id');
  }
}
