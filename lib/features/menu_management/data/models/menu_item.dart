import 'package:check_order_admin/features/menu_management/data/models/menu_option.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItemModel with _$MenuItemModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory MenuItemModel({
    @Id() @Default('') String id,
    required String name,
    required String category,
    @Default([]) List<MenuOptionModel> options,
    @Default('') String imageUrl60,
    @Default('') String imageUrl176,
    @Default('') String imageUrl600,
    @Default(0) int price,
    @Default('') String description,
    @Default(false) bool isPopular,
    @Default(false) bool isSoldOut,
    @Default(true) bool isExposed,
    @Default(false) bool isOptionNecessary,
  }) = _MenuItemModel;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemModelFromJson(json);
}

@Collection<MenuItemModel>('menus')
final menusRef = MenuItemModelCollectionReference();
