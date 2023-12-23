import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserModel.signedIn({
    required String email,

    /// TODO 실제 auth 들어가면 삭제
    required String password,
    required String storeName,
  }) = SignedIn;

  const UserModel._();

  const factory UserModel.signedOut([String? message]) = SignedOut;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  bool get isAuth => switch (this) {
        SignedIn() => true,
        SignedOut() => false,
      };
}
