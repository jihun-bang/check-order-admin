import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

import 'configs/app_configs.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/state_logger.dart';
import 'firebase_options.dart';
import 'routes/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  runApp(
    const ProviderScope(
      observers: [StateLogger()],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints.tight(const Size(1280, 800)),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: MaterialApp.router(
            routerConfig: router,
            theme: kAppTheme,
            title: '체크오더 매장 관리자',
            debugShowCheckedModeBanner: false,
            scrollBehavior: const ScrollBehavior()
                .copyWith(dragDevices: PointerDeviceKind.values.toSet()),
          ),
        ),
      ),
    );
  }
}
