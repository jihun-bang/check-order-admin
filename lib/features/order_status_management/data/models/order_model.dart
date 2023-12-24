import 'package:freezed_annotation/freezed_annotation.dart';

import 'menu_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderModel({
    required String id,
    required String tableId,
    required String storeId,
    required OrderStatus status,
    required String orderType,
    required List<MenuModel> menus,
    required DateTime orderedAt,
    DateTime? acceptedAt,
    DateTime? declinedAt,
    DateTime? completedAt,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum OrderStatus { order, accepted, declined, completed }
