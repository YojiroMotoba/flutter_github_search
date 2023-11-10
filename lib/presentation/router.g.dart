// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $githubSearchPageRoute,
    ];

RouteBase get $githubSearchPageRoute => GoRouteData.$route(
      path: '/',
      factory: $GithubSearchPageRouteExtension._fromState,
    );

extension $GithubSearchPageRouteExtension on GithubSearchPageRoute {
  static GithubSearchPageRoute _fromState(GoRouterState state) =>
      const GithubSearchPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
