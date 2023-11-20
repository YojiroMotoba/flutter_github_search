import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/page/github_search_page.dart';
import 'package:flutter_github_search/presentation/page_path.dart';
import 'package:flutter_github_search/presentation/state/github_search_page_state.dart';
import 'package:flutter_github_search/presentation/view_model/github_search_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
);

@TypedGoRoute<GithubSearchPageRoute>(
  path: PagePath.githubSearch,
)
class GithubSearchPageRoute extends GoRouteData {
  const GithubSearchPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        githubSearchPageState
            .overrideWith((_) => const GithubSearchPageState()),
        fetchRepositoriesProvider,
      ],
      child: const GithubSearchPage(),
    );
  }
}
