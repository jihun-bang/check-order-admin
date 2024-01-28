// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  @Id()
  String get id => throw _privateConstructorUsedError;
  String get tableName => throw _privateConstructorUsedError;
  String get storeId => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  String get orderType => throw _privateConstructorUsedError;
  List<OrderItemModel> get items => throw _privateConstructorUsedError;
  DateTime get orderedAt => throw _privateConstructorUsedError;
  DateTime? get acceptedAt => throw _privateConstructorUsedError;
  DateTime? get declinedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {@Id() String id,
      String tableName,
      String storeId,
      OrderStatus status,
      String orderType,
      List<OrderItemModel> items,
      DateTime orderedAt,
      DateTime? acceptedAt,
      DateTime? declinedAt,
      DateTime? completedAt,
      int totalAmount});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tableName = null,
    Object? storeId = null,
    Object? status = null,
    Object? orderType = null,
    Object? items = null,
    Object? orderedAt = null,
    Object? acceptedAt = freezed,
    Object? declinedAt = freezed,
    Object? completedAt = freezed,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      orderedAt: null == orderedAt
          ? _value.orderedAt
          : orderedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      declinedAt: freezed == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id() String id,
      String tableName,
      String storeId,
      OrderStatus status,
      String orderType,
      List<OrderItemModel> items,
      DateTime orderedAt,
      DateTime? acceptedAt,
      DateTime? declinedAt,
      DateTime? completedAt,
      int totalAmount});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tableName = null,
    Object? storeId = null,
    Object? status = null,
    Object? orderType = null,
    Object? items = null,
    Object? orderedAt = null,
    Object? acceptedAt = freezed,
    Object? declinedAt = freezed,
    Object? completedAt = freezed,
    Object? totalAmount = null,
  }) {
    return _then(_$OrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tableName: null == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      orderedAt: null == orderedAt
          ? _value.orderedAt
          : orderedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      declinedAt: freezed == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {@Id() this.id = '',
      required this.tableName,
      required this.storeId,
      this.status = OrderStatus.wait,
      required this.orderType,
      required final List<OrderItemModel> items,
      required this.orderedAt,
      this.acceptedAt,
      this.declinedAt,
      this.completedAt,
      required this.totalAmount})
      : _items = items;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  @JsonKey()
  @Id()
  final String id;
  @override
  final String tableName;
  @override
  final String storeId;
  @override
  @JsonKey()
  final OrderStatus status;
  @override
  final String orderType;
  final List<OrderItemModel> _items;
  @override
  List<OrderItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime orderedAt;
  @override
  final DateTime? acceptedAt;
  @override
  final DateTime? declinedAt;
  @override
  final DateTime? completedAt;
  @override
  final int totalAmount;

  @override
  String toString() {
    return 'OrderModel(id: $id, tableName: $tableName, storeId: $storeId, status: $status, orderType: $orderType, items: $items, orderedAt: $orderedAt, acceptedAt: $acceptedAt, declinedAt: $declinedAt, completedAt: $completedAt, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.storeId, storeId) || other.storeId == storeId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.orderedAt, orderedAt) ||
                other.orderedAt == orderedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.declinedAt, declinedAt) ||
                other.declinedAt == declinedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      tableName,
      storeId,
      status,
      orderType,
      const DeepCollectionEquality().hash(_items),
      orderedAt,
      acceptedAt,
      declinedAt,
      completedAt,
      totalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {@Id() final String id,
      required final String tableName,
      required final String storeId,
      final OrderStatus status,
      required final String orderType,
      required final List<OrderItemModel> items,
      required final DateTime orderedAt,
      final DateTime? acceptedAt,
      final DateTime? declinedAt,
      final DateTime? completedAt,
      required final int totalAmount}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  @Id()
  String get id;
  @override
  String get tableName;
  @override
  String get storeId;
  @override
  OrderStatus get status;
  @override
  String get orderType;
  @override
  List<OrderItemModel> get items;
  @override
  DateTime get orderedAt;
  @override
  DateTime? get acceptedAt;
  @override
  DateTime? get declinedAt;
  @override
  DateTime? get completedAt;
  @override
  int get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
