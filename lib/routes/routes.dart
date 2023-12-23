import 'package:check_order_admin/features/home/presentation/pages/landing_page.dart';
import 'package:check_order_admin/features/sign_in/presentation/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/home/presentation/pages/main_page.dart';
import 'route_path.dart';

part 'routes.g.dart';

final _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

@TypedGoRoute<LandingRoute>(path: RoutePath.landing)
class LandingRoute extends GoRouteData {
  const LandingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LandingPage();
  }
}

@TypedGoRoute<SignInRoute>(path: RoutePath.signIn)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInPage();
  }
}

@TypedStatefulShellRoute<MainRoute>(
  branches: [
    TypedStatefulShellBranch<OrderStatusManagementShellBranch>(
      routes: [
        TypedGoRoute<OrderStatusManagementRoute>(
          path: RoutePath.orderStatusManagement,
        ),
      ],
    ),
    TypedStatefulShellBranch<TableManagementShellBranch>(
      routes: [
        TypedGoRoute<TableManagementRoute>(
          path: RoutePath.tableManagement,
        ),
      ],
    ),
    TypedStatefulShellBranch<OrderStatusShellBranch>(
      routes: [
        TypedGoRoute<OrderStatusRoute>(
          path: RoutePath.orderStatus,
        ),
      ],
    ),
    TypedStatefulShellBranch<MenuManagementShellBranch>(
      routes: [
        TypedGoRoute<MenuManagementRoute>(
          path: RoutePath.menuManagement,
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingShellBranch>(
      routes: [
        TypedGoRoute<SettingRoute>(
          path: RoutePath.setting,
        ),
      ],
    ),
  ],
)
class MainRoute extends StatefulShellRouteData {
  static final $navigatorKey = _shellNavigatorKey;

  const MainRoute();

  @override
  Widget builder(context, state, navigationShell) =>
      MainPage(navigationShell: navigationShell);
}

class OrderStatusManagementShellBranch extends StatefulShellBranchData {
  const OrderStatusManagementShellBranch();
}

class OrderStatusManagementRoute extends GoRouteData {
  const OrderStatusManagementRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
          child: Scaffold(
        body: Center(child: Text('주문 현황 관리')),
      ));
}

class TableManagementShellBranch extends StatefulShellBranchData {
  const TableManagementShellBranch();
}

class TableManagementRoute extends GoRouteData {
  const TableManagementRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
          child: Scaffold(
        body: Center(child: Text('테이블 현황')),
      ));
}

class OrderStatusShellBranch extends StatefulShellBranchData {
  const OrderStatusShellBranch();
}

class OrderStatusRoute extends GoRouteData {
  const OrderStatusRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
          child: Scaffold(
        body: Center(child: Text('주문 현황')),
      ));
}

class MenuManagementShellBranch extends StatefulShellBranchData {
  const MenuManagementShellBranch();
}

class MenuManagementRoute extends GoRouteData {
  const MenuManagementRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
          child: Scaffold(
        body: Center(child: Text('메뉴 관리')),
      ));
}

class SettingShellBranch extends StatefulShellBranchData {
  const SettingShellBranch();
}

class SettingRoute extends GoRouteData {
  const SettingRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const NoTransitionPage(
          child: Scaffold(
        body: Center(child: Text('더보기')),
      ));
}
