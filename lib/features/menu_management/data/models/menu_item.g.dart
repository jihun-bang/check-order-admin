// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuItemModel _$MenuItemModelFromJson(Map<String, dynamic> json) =>
    MenuItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      imageUrl60: json['image_url60'] as String? ?? '',
      imageUrl176: json['image_url176'] as String? ?? '',
      imageUrl600: json['image_url600'] as String? ?? '',
      price: json['price'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      isPopular: json['is_popular'] as bool? ?? false,
      isSoldOut: json['is_sold_out'] as bool? ?? false,
    );

const _$MenuItemModelFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'category': 'category',
  'imageUrl60': 'image_url60',
  'imageUrl176': 'image_url176',
  'imageUrl600': 'image_url600',
  'price': 'price',
  'description': 'description',
  'isPopular': 'is_popular',
  'isSoldOut': 'is_sold_out',
};

// ignore: unused_element
abstract class _$MenuItemModelPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? category(String instance) => instance;
  // ignore: unused_element
  static Object? imageUrl60(String instance) => instance;
  // ignore: unused_element
  static Object? imageUrl176(String instance) => instance;
  // ignore: unused_element
  static Object? imageUrl600(String instance) => instance;
  // ignore: unused_element
  static Object? price(int instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? isPopular(bool instance) => instance;
  // ignore: unused_element
  static Object? isSoldOut(bool instance) => instance;
}

Map<String, dynamic> _$MenuItemModelToJson(MenuItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'image_url60': instance.imageUrl60,
      'image_url176': instance.imageUrl176,
      'image_url600': instance.imageUrl600,
      'price': instance.price,
      'description': instance.description,
      'is_popular': instance.isPopular,
      'is_sold_out': instance.isSoldOut,
    };
