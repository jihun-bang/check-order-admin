import 'package:injectable/injectable.dart';

import '../../remote/models/user/user_model.dart';
import '../storage/storage.dart';
import '../storage/storage_key.dart';

@singleton
class AuthStorage {
  final AppStorage _storage;

  AuthStorage(this._storage);

  String? get userEmail {
    return _storage.get(StorageKey.user);
  }

  Future<void> saveUser(SignedIn model) async {
    await _storage.set(StorageKey.user, model.email);
  }

  Future<void> reset() async {
    await _storage.remove(StorageKey.user);
  }
}
