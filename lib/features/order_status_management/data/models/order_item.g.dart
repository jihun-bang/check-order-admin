// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    OrderItemModel(
      id: json['id'] as String,
      item: MenuItemModel.fromJson(json['item'] as Map<String, dynamic>),
      count: json['count'] as int? ?? 1,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      totalAmount: json['totalAmount'] as int,
    );

const _$OrderItemModelFieldMap = <String, String>{
  'id': 'id',
  'item': 'item',
  'count': 'count',
  'updatedAt': 'updatedAt',
  'totalAmount': 'totalAmount',
};

// ignore: unused_element
abstract class _$OrderItemModelPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? item(MenuItemModel instance) => instance.toJson();
  // ignore: unused_element
  static Object? count(int instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? totalAmount(int instance) => instance;
}

Map<String, dynamic> _$OrderItemModelToJson(OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item': instance.item.toJson(),
      'count': instance.count,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'totalAmount': instance.totalAmount,
    };
