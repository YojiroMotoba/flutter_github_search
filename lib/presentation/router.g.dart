// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $bottomNavigationBarPageStatefulShellRoute,
      $githubRepositoryDetailPageSearchPageRoute,
    ];

RouteBase get $bottomNavigationBarPageStatefulShellRoute =>
    StatefulShellRouteData.$route(
      restorationScopeId:
          BottomNavigationBarPageStatefulShellRoute.$restorationScopeId,
      navigatorContainerBuilder:
          BottomNavigationBarPageStatefulShellRoute.$navigatorContainerBuilder,
      factory: $BottomNavigationBarPageStatefulShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $InitialTabPageRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/search',
              factory: $GithubSearchPageRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $BottomNavigationBarPageStatefulShellRouteExtension
    on BottomNavigationBarPageStatefulShellRoute {
  static BottomNavigationBarPageStatefulShellRoute _fromState(
          GoRouterState state) =>
      const BottomNavigationBarPageStatefulShellRoute();
}

extension $InitialTabPageRouteExtension on InitialTabPageRoute {
  static InitialTabPageRoute _fromState(GoRouterState state) =>
      const InitialTabPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $GithubSearchPageRouteExtension on GithubSearchPageRoute {
  static GithubSearchPageRoute _fromState(GoRouterState state) =>
      const GithubSearchPageRoute();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $githubRepositoryDetailPageSearchPageRoute => GoRouteData.$route(
      path: '/detail/:id',
      factory: $GithubRepositoryDetailPageSearchPageRouteExtension._fromState,
    );

extension $GithubRepositoryDetailPageSearchPageRouteExtension
    on GithubRepositoryDetailPageSearchPageRoute {
  static GithubRepositoryDetailPageSearchPageRoute _fromState(
          GoRouterState state) =>
      GithubRepositoryDetailPageSearchPageRoute(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/detail/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
