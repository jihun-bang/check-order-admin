import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/data/remote/models/user/sign_in_request_model.dart';

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
}
