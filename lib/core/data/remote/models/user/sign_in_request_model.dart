import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_request_model.freezed.dart';
part 'sign_in_request_model.g.dart';

@freezed
class SignInRequestModel with _$SignInRequestModel {
  const factory SignInRequestModel({
    required String email,
    required String password,
  }) = _SignInRequestModel;

  factory SignInRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestModelFromJson(json);
}
