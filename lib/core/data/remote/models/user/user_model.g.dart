// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignedInImpl _$$SignedInImplFromJson(Map<String, dynamic> json) =>
    _$SignedInImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      storeName: json['store_name'] as String,
      $type: json['runtimeType'] as String?,
    );

const _$$SignedInImplFieldMap = <String, String>{
  'email': 'email',
  'password': 'password',
  'storeName': 'store_name',
  r'$type': 'runtimeType',
};

// ignore: unused_element
abstract class _$$SignedInImplPerFieldToJson {
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? password(String instance) => instance;
  // ignore: unused_element
  static Object? storeName(String instance) => instance;
  // ignore: unused_element
  static Object? $type(String instance) => instance;
}

Map<String, dynamic> _$$SignedInImplToJson(_$SignedInImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'store_name': instance.storeName,
      'runtimeType': instance.$type,
    };

_$SignedOutImpl _$$SignedOutImplFromJson(Map<String, dynamic> json) =>
    _$SignedOutImpl(
      json['message'] as String?,
      json['runtimeType'] as String?,
    );

const _$$SignedOutImplFieldMap = <String, String>{
  'message': 'message',
  r'$type': 'runtimeType',
};

// ignore: unused_element
abstract class _$$SignedOutImplPerFieldToJson {
  // ignore: unused_element
  static Object? message(String? instance) => instance;
  // ignore: unused_element
  static Object? $type(String instance) => instance;
}

Map<String, dynamic> _$$SignedOutImplToJson(_$SignedOutImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
