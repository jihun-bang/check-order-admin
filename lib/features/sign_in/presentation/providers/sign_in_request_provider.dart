import 'package:check_order_admin/core/data/remote/models/user/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/remote/models/user/sign_in_request_model.dart';
import '../../../../services/auth_provider.dart';

part 'sign_in_request_provider.g.dart';

@riverpod
class SignInRequest extends _$SignInRequest {
  @override
  SignInRequestModel build() {
    return const SignInRequestModel(email: '', password: '');
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  bool get isValid {
    return state.email.isNotEmpty && state.password.isNotEmpty;
  }

  Future<UserModel> signIn() {
    return ref.read(authProvider.notifier).signIn(state);
  }
}
