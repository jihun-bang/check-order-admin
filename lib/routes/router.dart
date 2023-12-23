import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../core/utils/logger.dart';
import '../services/auth_provider.dart';
import 'route_path.dart';
import 'routes.dart';

part 'router.g.dart';

final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@riverpod
GoRouter router(RouterRef ref) {
  final isAuth = ValueNotifier<AsyncValue<bool>>(const AsyncLoading());
  ref
    ..onDispose(isAuth.dispose)
    ..listen(
      authProvider.select((value) => value.whenData((value) => value.isAuth)),
      (_, next) {
        isAuth.value = next;
      },
    );

  final router = GoRouter(
    navigatorKey: routerKey,
    refreshListenable: isAuth,
    initialLocation: RoutePath.landing,
    debugLogDiagnostics: true,
    routes: $appRoutes,
    redirect: (context, state) async {
      if (isAuth.value.unwrapPrevious().hasError ||
          isAuth.value.isLoading ||
          !isAuth.value.hasValue) {
        Logger.e(
            '인증 중...[isLoading=${isAuth.value.isLoading}, hasError=${isAuth.value.unwrapPrevious().hasError} hasValue=${isAuth.value.hasValue}]');
        return RoutePath.landing;
      }
      if (state.matchedLocation == RoutePath.landing ||
          state.matchedLocation == RoutePath.signIn) {
        return (isAuth.value.value ?? false)
            ? null
            : RoutePath.orderStatusManagement;
      }
      if (state.uri.path.contains('sign-in')) {
        return (isAuth.value.value ?? false) ? null : RoutePath.signIn;
      }
      return null;
    },
  );
  ref.onDispose(router.dispose);

  return router;
}
