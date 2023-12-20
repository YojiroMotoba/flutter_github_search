import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../router.dart';

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
    return Column(
      children: [
        Text('Github Repository Detail $_id'),
        _PushDetailPageButton(id: _id),
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
        const EmptyPageRoute().push(context);
      },
      child: const Text('empty page'),
    );
  }
}
