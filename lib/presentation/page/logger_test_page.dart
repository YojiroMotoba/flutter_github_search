import 'package:flutter/material.dart';
import 'package:flutter_github_search/common/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoggerTestPage extends ConsumerWidget {
  const LoggerTestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logger Test'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SingleChildScrollView(
      child: _LogButtons(),
    );
  }
}

class _LogButtons extends ConsumerWidget {
  const _LogButtons();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          OutlinedButton(
            child: const Text('trace'),
            onPressed: () {
              logger.t('this is trace log.');
            },
          ),
          OutlinedButton(
            child: const Text('debug'),
            onPressed: () {
              logger.d('this is debug log.');
            },
          ),
          OutlinedButton(
            child: const Text('info'),
            onPressed: () {
              logger.i('this is info log.');
            },
          ),
          OutlinedButton(
            child: const Text('warning'),
            onPressed: () {
              logger.w('this is warning log.');
            },
          ),
          OutlinedButton(
            child: const Text('error'),
            onPressed: () {
              logger.e('this is error log.');
            },
          ),
          OutlinedButton(
            child: const Text('fatal'),
            onPressed: () {
              logger.f('this is fatal log.');
            },
          ),
        ],
      ),
    );
  }
}
