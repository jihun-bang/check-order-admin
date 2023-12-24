// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuModelImpl _$$MenuModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      totalPrice: json['total_price'] as int,
      count: json['count'] as int,
    );

const _$$MenuModelImplFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'totalPrice': 'total_price',
  'count': 'count',
};

// ignore: unused_element
abstract class _$$MenuModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? totalPrice(int instance) => instance;
  // ignore: unused_element
  static Object? count(int instance) => instance;
}

Map<String, dynamic> _$$MenuModelImplToJson(_$MenuModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'total_price': instance.totalPrice,
      'count': instance.count,
    };
