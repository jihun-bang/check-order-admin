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

final menus = [
  MenuItemModel(
      id: '0',
      name: '모듬꼬치6종',
      category: '꼬치',
      description: '참기름을 곁들인 신선한 육회에 바삭한 콘을 얹은 우주 최강 안주',
      isPopular: false,
      isSoldOut: false,
      isExposed: true,
      isOptionNecessary: false,
      price: 17000,
      options: [
        MenuOptionModel(name: '라면사리', price: 2000),
        MenuOptionModel(name: '우동사리', price: 2000),
        MenuOptionModel(name: '쫄면사리', price: 3000)
      ]),
  MenuItemModel(
    id: '2',
    name: '우삼겹야끼소바',
    category: '볶음/파스타',
    description: '참기름을 곁들인 신선한 육회에 바삭한 콘을 얹은 우주 최강 안주',
    isPopular: false,
    isSoldOut: false,
    isExposed: true,
    isOptionNecessary: false,
    price: 13900,
  ),
  MenuItemModel(
    id: '3',
    name: '오이무침',
    category: '진미/디저트',
    description: '참기름을 곁들인 신선한 육회에 바삭한 콘을 얹은 우주 최강 안주',
    isPopular: false,
    isSoldOut: false,
    isExposed: true,
    isOptionNecessary: false,
    price: 5900,
  ),
  MenuItemModel(
    id: '5',
    name: '오뎅모리아와세',
    category: '나베',
    description: '참기름을 곁들인 신선한 육회에 바삭한 콘을 얹은 우주 최강 안주',
    isPopular: false,
    isSoldOut: false,
    isExposed: true,
    isOptionNecessary: false,
    price: 15900,
  ),
  MenuItemModel(
    id: '9',
    name: '트러플바질크림파스타',
    category: '볶음/파스타',
    description: '참기름을 곁들인 신선한 육회에 바삭한 콘을 얹은 우주 최강 안주',
    isPopular: false,
    isSoldOut: false,
    isExposed: true,
    isOptionNecessary: false,
    price: 14900,
  ),
  MenuItemModel(
    id: '13',
    name: '멘치카츠',
    category: '튀김',
    description: '참기름을 곁들인 신선한 육회에 바삭한 콘을 얹은 우주 최강 안주',
    isPopular: false,
    isSoldOut: false,
    isExposed: true,
    isOptionNecessary: false,
    price: 9900,
  ),
  MenuItemModel(
    id: '16',
    name: '라구포테이토(미트소스감튀)',
    category: '튀김',
    description: '참기름을 곁들인 신선한 육회에 바삭한 콘을 얹은 우주 최강 안주',
    isPopular: false,
    isSoldOut: false,
    isExposed: true,
    isOptionNecessary: false,
    price: 13900,
  ),
];

@Collection<MenuItemModel>('menus')
final menusRef = MenuItemModelCollectionReference();
