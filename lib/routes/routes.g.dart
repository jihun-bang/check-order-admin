// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $landingRoute,
      $signInRoute,
      $mainRoute,
    ];

RouteBase get $landingRoute => GoRouteData.$route(
      path: '/',
      factory: $LandingRouteExtension._fromState,
    );

extension $LandingRouteExtension on LandingRoute {
  static LandingRoute _fromState(GoRouterState state) => const LandingRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInRoute => GoRouteData.$route(
      path: '/sign-in',
      factory: $SignInRouteExtension._fromState,
    );

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/sign-in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $mainRoute => StatefulShellRouteData.$route(
      factory: $MainRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/order-status-management',
              factory: $OrderStatusManagementRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/table-management',
              factory: $TableManagementRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/order-status',
              factory: $OrderStatusRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/menu-management',
              factory: $MenuManagementRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/setting',
              factory: $SettingRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => const MainRoute();
}

extension $OrderStatusManagementRouteExtension on OrderStatusManagementRoute {
  static OrderStatusManagementRoute _fromState(GoRouterState state) =>
      const OrderStatusManagementRoute();

  String get location => GoRouteData.$location(
        '/order-status-management',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TableManagementRouteExtension on TableManagementRoute {
  static TableManagementRoute _fromState(GoRouterState state) =>
      const TableManagementRoute();

  String get location => GoRouteData.$location(
        '/table-management',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OrderStatusRouteExtension on OrderStatusRoute {
  static OrderStatusRoute _fromState(GoRouterState state) =>
      const OrderStatusRoute();

  String get location => GoRouteData.$location(
        '/order-status',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MenuManagementRouteExtension on MenuManagementRoute {
  static MenuManagementRoute _fromState(GoRouterState state) =>
      const MenuManagementRoute();

  String get location => GoRouteData.$location(
        '/menu-management',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingRouteExtension on SettingRoute {
  static SettingRoute _fromState(GoRouterState state) => const SettingRoute();

  String get location => GoRouteData.$location(
        '/setting',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
