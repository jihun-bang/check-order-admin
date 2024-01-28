import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_item.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderModel({
    @Id() @Default('') String id,
    required String tableName,
    required String storeId,
    @Default(OrderStatus.wait) OrderStatus status,
    required String orderType,
    required List<OrderItemModel> items,
    required DateTime orderedAt,
    DateTime? acceptedAt,
    DateTime? declinedAt,
    DateTime? completedAt,
    required int totalAmount,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum OrderStatus { wait, accepted, declined, completed }

@Collection<OrderModel>('orders')
final ordersRef = OrderModelCollectionReference();
