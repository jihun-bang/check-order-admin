// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerFailureImpl _$$ServerFailureImplFromJson(Map<String, dynamic> json) =>
    _$ServerFailureImpl(
      code: json['code'] as String,
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

const _$$ServerFailureImplFieldMap = <String, String>{
  'code': 'code',
  'message': 'message',
  r'$type': 'runtimeType',
};

// ignore: unused_element
abstract class _$$ServerFailureImplPerFieldToJson {
  // ignore: unused_element
  static Object? code(String instance) => instance;
  // ignore: unused_element
  static Object? message(String instance) => instance;
  // ignore: unused_element
  static Object? $type(String instance) => instance;
}

Map<String, dynamic> _$$ServerFailureImplToJson(_$ServerFailureImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$DefaultImpl _$$DefaultImplFromJson(Map<String, dynamic> json) =>
    _$DefaultImpl(
      json['code'] as String? ?? '-1',
      json['message'] as String? ?? 'Unknown error occurred',
      json['runtimeType'] as String?,
    );

const _$$DefaultImplFieldMap = <String, String>{
  'code': 'code',
  'message': 'message',
  r'$type': 'runtimeType',
};

// ignore: unused_element
abstract class _$$DefaultImplPerFieldToJson {
  // ignore: unused_element
  static Object? code(String instance) => instance;
  // ignore: unused_element
  static Object? message(String instance) => instance;
  // ignore: unused_element
  static Object? $type(String instance) => instance;
}

Map<String, dynamic> _$$DefaultImplToJson(_$DefaultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };
