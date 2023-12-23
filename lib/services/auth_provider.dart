import 'dart:async';

import 'package:check_order_admin/core/domain/usecases/auth_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../configs/app_configs.dart';
import '../core/data/remote/models/user/sign_in_request_model.dart';
import '../core/data/remote/models/user/user_model.dart';
import '../core/utils/logger.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  late AuthUseCase _useCase;

  @override
  Future<UserModel> build() async {
    _useCase = getIt();

    _persistenceRefreshLogic();
    return _signInRecoveryAttempt();
  }

  SignedIn? get currentUser {
    final user = state.value;
    return user is SignedIn ? user : null;
  }

  Future<UserModel> _signInRecoveryAttempt() async {
    final user = await _useCase.signInRecoveryAttempt();
    state = AsyncData(user);
    return user;
  }

  Future<void> signOut() async {
    state = AsyncData(await _useCase.logout());
  }

  Future<UserModel> signIn(SignInRequestModel model) async {
    final user = await _useCase.signIn(model);
    state = AsyncData(user);
    return user;
  }

  void _persistenceRefreshLogic() {
    ref.listenSelf((_, next) {
      try {
        if (next.isLoading) return;
        if (next.hasError) {
          signOut();
          return;
        }
      } catch (e) {
        signOut();
        Logger.e(e);
      }
    });
  }
}
