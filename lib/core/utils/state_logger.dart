import 'package:hooks_riverpod/hooks_riverpod.dart';

class StateLogger extends ProviderObserver {
  const StateLogger();

  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    // Logger.d('''
    // provider: ${'${provider.name ?? provider.runtimeType}(${provider.hashCode})'}
    // oldValue: $previousValue
    // newValue: $newValue''');
  }
}
