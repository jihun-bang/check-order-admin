import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'app_configs.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => await getIt.init();
