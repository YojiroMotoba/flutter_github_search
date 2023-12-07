import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/page/github_repository_detail_page.dart';
import 'package:flutter_github_search/presentation/page/github_search_page.dart';
import 'package:flutter_github_search/presentation/page/initial_tab_page.dart';
import 'package:flutter_github_search/presentation/page_path.dart';
import 'package:flutter_github_search/presentation/state/github_search_page_state.dart';
import 'package:flutter_github_search/presentation/view_model/github_search_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'page/bottom_navigation_bar_page.dart';

part 'router.g.dart';

final router = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
);

@TypedStatefulShellRoute<BottomNavigationBarPageStatefulShellRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<StatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<InitialTabPageRoute>(path: PagePath.initialTabPage),
      ],
    ),
    TypedStatefulShellBranch<StatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<GithubSearchPageRoute>(path: PagePath.githubSearch),
      ],
    ),
  ],
)
class BottomNavigationBarPageStatefulShellRoute extends StatefulShellRouteData {
  const BottomNavigationBarPageStatefulShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static const String $restorationScopeId = 'restorationScopeId';

  static Widget $navigatorContainerBuilder(BuildContext context,
      StatefulNavigationShell navigationShell, List<Widget> children) {
    return BottomNavigationBarPage(
      navigationShell: navigationShell,
      children: children,
    );
  }
}

class InitialTabPageRoute extends GoRouteData {
  const InitialTabPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InitialTabPage();
  }
}

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

@TypedGoRoute<GithubRepositoryDetailPageSearchPageRoute>(
  path: PagePath.githubRepositoryDetail,
)
class GithubRepositoryDetailPageSearchPageRoute extends GoRouteData {
  const GithubRepositoryDetailPageSearchPageRoute(this.id);

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return GithubRepositoryDetailPage(id);
  }
}
