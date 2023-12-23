// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'sign_in_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInRequestModelImpl _$$SignInRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInRequestModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

const _$$SignInRequestModelImplFieldMap = <String, String>{
  'email': 'email',
  'password': 'password',
};

// ignore: unused_element
abstract class _$$SignInRequestModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? password(String instance) => instance;
}

Map<String, dynamic> _$$SignInRequestModelImplToJson(
        _$SignInRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
