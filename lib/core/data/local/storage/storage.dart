import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class AppStorage {
  late final SharedPreferences sharedPreferences;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  dynamic get(String key) {
    return sharedPreferences.get(key);
  }

  void clear() async {
    await sharedPreferences.clear();
  }

  bool has(String key) {
    return sharedPreferences.containsKey(key);
  }

  Future<bool> remove(String key) async {
    return await sharedPreferences.remove(key);
  }

  Future<bool> set(String key, data) async {
    return await sharedPreferences.setString(key, data.toString());
  }
}
