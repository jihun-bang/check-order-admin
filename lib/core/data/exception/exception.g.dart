// GENERATED CODE - DO NOT MODIFY BY HAND

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

Map<String, dynamic> _$$DefaultImplToJson(_$DefaultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'runtimeType': instance.$type,
    };
