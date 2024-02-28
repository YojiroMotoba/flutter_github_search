import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'di.dart';

void main() {
  runApp( 
    ProviderScope(
      overrides: overrides,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
