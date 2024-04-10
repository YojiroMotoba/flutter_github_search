import 'package:flutter/material.dart';
import 'package:flutter_github_search/presentation/page/empty_page.dart';
import 'package:flutter_github_search/presentation/page/github_repository_detail_page.dart';
import 'package:flutter_github_search/presentation/page/github_search_page.dart';
import 'package:flutter_github_search/presentation/page/initial_tab_page.dart';
import 'package:flutter_github_search/presentation/page/logger_test_page.dart';
import 'package:flutter_github_search/presentation/page_path.dart';
import 'package:flutter_github_search/presentation/state/github_search_page_state.dart';
import 'package:flutter_github_search/presentation/view_model/github_search_page_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'page/bottom_navigation_bar_page.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorAKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  debugLogDiagnostics: true,
  routes: $appRoutes,
  navigatorKey: rootNavigatorKey,
);

@TypedStatefulShellRoute<BottomNavigationBarPageStatefulShellRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<BranchAData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<InitialTabPageRoute>(path: PagePath.initialTabPage),
      ],
    ),
    TypedStatefulShellBranch<BranchData>(
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

class BranchAData extends StatefulShellBranchData {
  const BranchAData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorAKey;
}

class BranchData extends StatefulShellBranchData {
  const BranchData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;
  static const String $restorationScopeId = 'restorationScopeId';
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

@TypedGoRoute<EmptyPageRoute>(
  path: PagePath.emptyPage,
)
class EmptyPageRoute extends GoRouteData {
  const EmptyPageRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EmptyPage();
  }
}

@TypedGoRoute<LoggerTestPageRoute>(
  path: PagePath.loggerTestPage,
)
class LoggerTestPageRoute extends GoRouteData {
  const LoggerTestPageRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoggerTestPage();
  }
}
