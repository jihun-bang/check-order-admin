// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'menu_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuOptionModel _$MenuOptionModelFromJson(Map<String, dynamic> json) =>
    MenuOptionModel(
      name: json['name'] as String,
      price: json['price'] as int? ?? 0,
    );

const _$MenuOptionModelFieldMap = <String, String>{
  'name': 'name',
  'price': 'price',
};

// ignore: unused_element
abstract class _$MenuOptionModelPerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? price(int instance) => instance;
}

Map<String, dynamic> _$MenuOptionModelToJson(MenuOptionModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
