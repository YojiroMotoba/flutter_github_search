// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $bottomNavigationBarPageRoute,
      $githubSearchPageRoute,
      $githubRepositoryDetailPageSearchPageRoute,
    ];

RouteBase get $bottomNavigationBarPageRoute => GoRouteData.$route(
      path: '/',
      factory: $BottomNavigationBarPageRouteExtension._fromState,
    );

extension $BottomNavigationBarPageRouteExtension
    on BottomNavigationBarPageRoute {
  static BottomNavigationBarPageRoute _fromState(GoRouterState state) =>
      const BottomNavigationBarPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $githubSearchPageRoute => GoRouteData.$route(
      path: '/search',
      factory: $GithubSearchPageRouteExtension._fromState,
    );

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
