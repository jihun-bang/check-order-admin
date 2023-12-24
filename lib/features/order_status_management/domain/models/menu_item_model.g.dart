// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuItemModelImpl _$$MenuItemModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemModelImpl(
      name: json['name'] as String,
      count: json['count'] as int,
    );

const _$$MenuItemModelImplFieldMap = <String, String>{
  'name': 'name',
  'count': 'count',
};

// ignore: unused_element
abstract class _$$MenuItemModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? count(int instance) => instance;
}

Map<String, dynamic> _$$MenuItemModelImplToJson(_$MenuItemModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
    };
