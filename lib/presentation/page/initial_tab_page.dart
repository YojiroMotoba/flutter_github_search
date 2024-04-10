import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InitialTabPage extends ConsumerWidget {
  const InitialTabPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Tab Page'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Center(
            child: Text('This is initial page.'),
          ),
          OutlinedButton(
            child: const Text('log test page'),
            onPressed: () {
              const LoggerTestPageRoute().push(context);
            },
          ),
        ],
      ),
    );
  }
}
