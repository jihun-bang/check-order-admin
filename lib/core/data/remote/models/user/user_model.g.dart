// GENERATED CODE - DO NOT MODIFY BY HAND

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

Map<String, dynamic> _$$SignedOutImplToJson(_$SignedOutImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
