// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['id'] as String,
      tableId: json['table_id'] as String,
      storeId: json['store_id'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      orderType: json['order_type'] as String,
      menus: (json['menus'] as List<dynamic>)
          .map((e) => MenuModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderedAt: DateTime.parse(json['ordered_at'] as String),
      acceptedAt: json['accepted_at'] == null
          ? null
          : DateTime.parse(json['accepted_at'] as String),
      declinedAt: json['declined_at'] == null
          ? null
          : DateTime.parse(json['declined_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
    );

const _$$OrderModelImplFieldMap = <String, String>{
  'id': 'id',
  'tableId': 'table_id',
  'storeId': 'store_id',
  'status': 'status',
  'orderType': 'order_type',
  'menus': 'menus',
  'orderedAt': 'ordered_at',
  'acceptedAt': 'accepted_at',
  'declinedAt': 'declined_at',
  'completedAt': 'completed_at',
};

// ignore: unused_element
abstract class _$$OrderModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? tableId(String instance) => instance;
  // ignore: unused_element
  static Object? storeId(String instance) => instance;
  // ignore: unused_element
  static Object? status(OrderStatus instance) =>
      _$OrderStatusEnumMap[instance]!;
  // ignore: unused_element
  static Object? orderType(String instance) => instance;
  // ignore: unused_element
  static Object? menus(List<MenuModel> instance) => instance;
  // ignore: unused_element
  static Object? orderedAt(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? acceptedAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? declinedAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? completedAt(DateTime? instance) => instance?.toIso8601String();
}

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'table_id': instance.tableId,
      'store_id': instance.storeId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'order_type': instance.orderType,
      'menus': instance.menus,
      'ordered_at': instance.orderedAt.toIso8601String(),
      'accepted_at': instance.acceptedAt?.toIso8601String(),
      'declined_at': instance.declinedAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.order: 'ORDER',
  OrderStatus.accepted: 'ACCEPTED',
  OrderStatus.declined: 'DECLINED',
  OrderStatus.completed: 'COMPLETED',
};
