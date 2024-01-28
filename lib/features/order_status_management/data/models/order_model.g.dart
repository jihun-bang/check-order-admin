// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'order_model.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class OrderModelCollectionReference
    implements
        OrderModelQuery,
        FirestoreCollectionReference<OrderModel, OrderModelQuerySnapshot> {
  factory OrderModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$OrderModelCollectionReference;

  static OrderModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return OrderModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    OrderModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<OrderModel> get reference;

  @override
  OrderModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<OrderModelDocumentReference> add(OrderModel value);
}

class _$OrderModelCollectionReference extends _$OrderModelQuery
    implements OrderModelCollectionReference {
  factory _$OrderModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$OrderModelCollectionReference._(
      firestore.collection('orders').withConverter(
            fromFirestore: OrderModelCollectionReference.fromFirestore,
            toFirestore: OrderModelCollectionReference.toFirestore,
          ),
    );
  }

  _$OrderModelCollectionReference._(
    CollectionReference<OrderModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<OrderModel> get reference =>
      super.reference as CollectionReference<OrderModel>;

  @override
  OrderModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return OrderModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<OrderModelDocumentReference> add(OrderModel value) {
    return reference.add(value).then((ref) => OrderModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$OrderModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class OrderModelDocumentReference
    extends FirestoreDocumentReference<OrderModel, OrderModelDocumentSnapshot> {
  factory OrderModelDocumentReference(DocumentReference<OrderModel> reference) =
      _$OrderModelDocumentReference;

  DocumentReference<OrderModel> get reference;

  /// A reference to the [OrderModelCollectionReference] containing this document.
  OrderModelCollectionReference get parent {
    return _$OrderModelCollectionReference(reference.firestore);
  }

  @override
  Stream<OrderModelDocumentSnapshot> snapshots();

  @override
  Future<OrderModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String tableName,
    FieldValue tableNameFieldValue,
    String storeId,
    FieldValue storeIdFieldValue,
    OrderStatus status,
    FieldValue statusFieldValue,
    String orderType,
    FieldValue orderTypeFieldValue,
    List<OrderItemModel> items,
    FieldValue itemsFieldValue,
    DateTime orderedAt,
    FieldValue orderedAtFieldValue,
    DateTime? acceptedAt,
    FieldValue acceptedAtFieldValue,
    DateTime? declinedAt,
    FieldValue declinedAtFieldValue,
    DateTime? completedAt,
    FieldValue completedAtFieldValue,
    int totalAmount,
    FieldValue totalAmountFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String tableName,
    FieldValue tableNameFieldValue,
    String storeId,
    FieldValue storeIdFieldValue,
    OrderStatus status,
    FieldValue statusFieldValue,
    String orderType,
    FieldValue orderTypeFieldValue,
    List<OrderItemModel> items,
    FieldValue itemsFieldValue,
    DateTime orderedAt,
    FieldValue orderedAtFieldValue,
    DateTime? acceptedAt,
    FieldValue acceptedAtFieldValue,
    DateTime? declinedAt,
    FieldValue declinedAtFieldValue,
    DateTime? completedAt,
    FieldValue completedAtFieldValue,
    int totalAmount,
    FieldValue totalAmountFieldValue,
  });
}

class _$OrderModelDocumentReference
    extends FirestoreDocumentReference<OrderModel, OrderModelDocumentSnapshot>
    implements OrderModelDocumentReference {
  _$OrderModelDocumentReference(this.reference);

  @override
  final DocumentReference<OrderModel> reference;

  /// A reference to the [OrderModelCollectionReference] containing this document.
  OrderModelCollectionReference get parent {
    return _$OrderModelCollectionReference(reference.firestore);
  }

  @override
  Stream<OrderModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(OrderModelDocumentSnapshot._);
  }

  @override
  Future<OrderModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(OrderModelDocumentSnapshot._);
  }

  @override
  Future<OrderModelDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(OrderModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? tableName = _sentinel,
    FieldValue? tableNameFieldValue,
    Object? storeId = _sentinel,
    FieldValue? storeIdFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? orderType = _sentinel,
    FieldValue? orderTypeFieldValue,
    Object? items = _sentinel,
    FieldValue? itemsFieldValue,
    Object? orderedAt = _sentinel,
    FieldValue? orderedAtFieldValue,
    Object? acceptedAt = _sentinel,
    FieldValue? acceptedAtFieldValue,
    Object? declinedAt = _sentinel,
    FieldValue? declinedAtFieldValue,
    Object? completedAt = _sentinel,
    FieldValue? completedAtFieldValue,
    Object? totalAmount = _sentinel,
    FieldValue? totalAmountFieldValue,
  }) async {
    assert(
      tableName == _sentinel || tableNameFieldValue == null,
      "Cannot specify both tableName and tableNameFieldValue",
    );
    assert(
      storeId == _sentinel || storeIdFieldValue == null,
      "Cannot specify both storeId and storeIdFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      orderType == _sentinel || orderTypeFieldValue == null,
      "Cannot specify both orderType and orderTypeFieldValue",
    );
    assert(
      items == _sentinel || itemsFieldValue == null,
      "Cannot specify both items and itemsFieldValue",
    );
    assert(
      orderedAt == _sentinel || orderedAtFieldValue == null,
      "Cannot specify both orderedAt and orderedAtFieldValue",
    );
    assert(
      acceptedAt == _sentinel || acceptedAtFieldValue == null,
      "Cannot specify both acceptedAt and acceptedAtFieldValue",
    );
    assert(
      declinedAt == _sentinel || declinedAtFieldValue == null,
      "Cannot specify both declinedAt and declinedAtFieldValue",
    );
    assert(
      completedAt == _sentinel || completedAtFieldValue == null,
      "Cannot specify both completedAt and completedAtFieldValue",
    );
    assert(
      totalAmount == _sentinel || totalAmountFieldValue == null,
      "Cannot specify both totalAmount and totalAmountFieldValue",
    );
    final json = {
      if (tableName != _sentinel)
        _$$OrderModelImplFieldMap['tableName']!:
            _$$OrderModelImplPerFieldToJson.tableName(tableName as String),
      if (tableNameFieldValue != null)
        _$$OrderModelImplFieldMap['tableName']!: tableNameFieldValue,
      if (storeId != _sentinel)
        _$$OrderModelImplFieldMap['storeId']!:
            _$$OrderModelImplPerFieldToJson.storeId(storeId as String),
      if (storeIdFieldValue != null)
        _$$OrderModelImplFieldMap['storeId']!: storeIdFieldValue,
      if (status != _sentinel)
        _$$OrderModelImplFieldMap['status']!:
            _$$OrderModelImplPerFieldToJson.status(status as OrderStatus),
      if (statusFieldValue != null)
        _$$OrderModelImplFieldMap['status']!: statusFieldValue,
      if (orderType != _sentinel)
        _$$OrderModelImplFieldMap['orderType']!:
            _$$OrderModelImplPerFieldToJson.orderType(orderType as String),
      if (orderTypeFieldValue != null)
        _$$OrderModelImplFieldMap['orderType']!: orderTypeFieldValue,
      if (items != _sentinel)
        _$$OrderModelImplFieldMap['items']!: _$$OrderModelImplPerFieldToJson
            .items(items as List<OrderItemModel>),
      if (itemsFieldValue != null)
        _$$OrderModelImplFieldMap['items']!: itemsFieldValue,
      if (orderedAt != _sentinel)
        _$$OrderModelImplFieldMap['orderedAt']!:
            _$$OrderModelImplPerFieldToJson.orderedAt(orderedAt as DateTime),
      if (orderedAtFieldValue != null)
        _$$OrderModelImplFieldMap['orderedAt']!: orderedAtFieldValue,
      if (acceptedAt != _sentinel)
        _$$OrderModelImplFieldMap['acceptedAt']!:
            _$$OrderModelImplPerFieldToJson.acceptedAt(acceptedAt as DateTime?),
      if (acceptedAtFieldValue != null)
        _$$OrderModelImplFieldMap['acceptedAt']!: acceptedAtFieldValue,
      if (declinedAt != _sentinel)
        _$$OrderModelImplFieldMap['declinedAt']!:
            _$$OrderModelImplPerFieldToJson.declinedAt(declinedAt as DateTime?),
      if (declinedAtFieldValue != null)
        _$$OrderModelImplFieldMap['declinedAt']!: declinedAtFieldValue,
      if (completedAt != _sentinel)
        _$$OrderModelImplFieldMap['completedAt']!:
            _$$OrderModelImplPerFieldToJson
                .completedAt(completedAt as DateTime?),
      if (completedAtFieldValue != null)
        _$$OrderModelImplFieldMap['completedAt']!: completedAtFieldValue,
      if (totalAmount != _sentinel)
        _$$OrderModelImplFieldMap['totalAmount']!:
            _$$OrderModelImplPerFieldToJson.totalAmount(totalAmount as int),
      if (totalAmountFieldValue != null)
        _$$OrderModelImplFieldMap['totalAmount']!: totalAmountFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? tableName = _sentinel,
    FieldValue? tableNameFieldValue,
    Object? storeId = _sentinel,
    FieldValue? storeIdFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? orderType = _sentinel,
    FieldValue? orderTypeFieldValue,
    Object? items = _sentinel,
    FieldValue? itemsFieldValue,
    Object? orderedAt = _sentinel,
    FieldValue? orderedAtFieldValue,
    Object? acceptedAt = _sentinel,
    FieldValue? acceptedAtFieldValue,
    Object? declinedAt = _sentinel,
    FieldValue? declinedAtFieldValue,
    Object? completedAt = _sentinel,
    FieldValue? completedAtFieldValue,
    Object? totalAmount = _sentinel,
    FieldValue? totalAmountFieldValue,
  }) {
    assert(
      tableName == _sentinel || tableNameFieldValue == null,
      "Cannot specify both tableName and tableNameFieldValue",
    );
    assert(
      storeId == _sentinel || storeIdFieldValue == null,
      "Cannot specify both storeId and storeIdFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      orderType == _sentinel || orderTypeFieldValue == null,
      "Cannot specify both orderType and orderTypeFieldValue",
    );
    assert(
      items == _sentinel || itemsFieldValue == null,
      "Cannot specify both items and itemsFieldValue",
    );
    assert(
      orderedAt == _sentinel || orderedAtFieldValue == null,
      "Cannot specify both orderedAt and orderedAtFieldValue",
    );
    assert(
      acceptedAt == _sentinel || acceptedAtFieldValue == null,
      "Cannot specify both acceptedAt and acceptedAtFieldValue",
    );
    assert(
      declinedAt == _sentinel || declinedAtFieldValue == null,
      "Cannot specify both declinedAt and declinedAtFieldValue",
    );
    assert(
      completedAt == _sentinel || completedAtFieldValue == null,
      "Cannot specify both completedAt and completedAtFieldValue",
    );
    assert(
      totalAmount == _sentinel || totalAmountFieldValue == null,
      "Cannot specify both totalAmount and totalAmountFieldValue",
    );
    final json = {
      if (tableName != _sentinel)
        _$$OrderModelImplFieldMap['tableName']!:
            _$$OrderModelImplPerFieldToJson.tableName(tableName as String),
      if (tableNameFieldValue != null)
        _$$OrderModelImplFieldMap['tableName']!: tableNameFieldValue,
      if (storeId != _sentinel)
        _$$OrderModelImplFieldMap['storeId']!:
            _$$OrderModelImplPerFieldToJson.storeId(storeId as String),
      if (storeIdFieldValue != null)
        _$$OrderModelImplFieldMap['storeId']!: storeIdFieldValue,
      if (status != _sentinel)
        _$$OrderModelImplFieldMap['status']!:
            _$$OrderModelImplPerFieldToJson.status(status as OrderStatus),
      if (statusFieldValue != null)
        _$$OrderModelImplFieldMap['status']!: statusFieldValue,
      if (orderType != _sentinel)
        _$$OrderModelImplFieldMap['orderType']!:
            _$$OrderModelImplPerFieldToJson.orderType(orderType as String),
      if (orderTypeFieldValue != null)
        _$$OrderModelImplFieldMap['orderType']!: orderTypeFieldValue,
      if (items != _sentinel)
        _$$OrderModelImplFieldMap['items']!: _$$OrderModelImplPerFieldToJson
            .items(items as List<OrderItemModel>),
      if (itemsFieldValue != null)
        _$$OrderModelImplFieldMap['items']!: itemsFieldValue,
      if (orderedAt != _sentinel)
        _$$OrderModelImplFieldMap['orderedAt']!:
            _$$OrderModelImplPerFieldToJson.orderedAt(orderedAt as DateTime),
      if (orderedAtFieldValue != null)
        _$$OrderModelImplFieldMap['orderedAt']!: orderedAtFieldValue,
      if (acceptedAt != _sentinel)
        _$$OrderModelImplFieldMap['acceptedAt']!:
            _$$OrderModelImplPerFieldToJson.acceptedAt(acceptedAt as DateTime?),
      if (acceptedAtFieldValue != null)
        _$$OrderModelImplFieldMap['acceptedAt']!: acceptedAtFieldValue,
      if (declinedAt != _sentinel)
        _$$OrderModelImplFieldMap['declinedAt']!:
            _$$OrderModelImplPerFieldToJson.declinedAt(declinedAt as DateTime?),
      if (declinedAtFieldValue != null)
        _$$OrderModelImplFieldMap['declinedAt']!: declinedAtFieldValue,
      if (completedAt != _sentinel)
        _$$OrderModelImplFieldMap['completedAt']!:
            _$$OrderModelImplPerFieldToJson
                .completedAt(completedAt as DateTime?),
      if (completedAtFieldValue != null)
        _$$OrderModelImplFieldMap['completedAt']!: completedAtFieldValue,
      if (totalAmount != _sentinel)
        _$$OrderModelImplFieldMap['totalAmount']!:
            _$$OrderModelImplPerFieldToJson.totalAmount(totalAmount as int),
      if (totalAmountFieldValue != null)
        _$$OrderModelImplFieldMap['totalAmount']!: totalAmountFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class OrderModelQuery
    implements QueryReference<OrderModel, OrderModelQuerySnapshot> {
  @override
  OrderModelQuery limit(int limit);

  @override
  OrderModelQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  OrderModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  OrderModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  OrderModelQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  OrderModelQuery whereTableName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  OrderModelQuery whereStoreId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  OrderModelQuery whereStatus({
    OrderStatus? isEqualTo,
    OrderStatus? isNotEqualTo,
    OrderStatus? isLessThan,
    OrderStatus? isLessThanOrEqualTo,
    OrderStatus? isGreaterThan,
    OrderStatus? isGreaterThanOrEqualTo,
    bool? isNull,
    List<OrderStatus>? whereIn,
    List<OrderStatus>? whereNotIn,
  });
  OrderModelQuery whereOrderType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  OrderModelQuery whereItems({
    List<OrderItemModel>? isEqualTo,
    List<OrderItemModel>? isNotEqualTo,
    List<OrderItemModel>? isLessThan,
    List<OrderItemModel>? isLessThanOrEqualTo,
    List<OrderItemModel>? isGreaterThan,
    List<OrderItemModel>? isGreaterThanOrEqualTo,
    bool? isNull,
    OrderItemModel? arrayContains,
    List<OrderItemModel>? arrayContainsAny,
  });
  OrderModelQuery whereOrderedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  });
  OrderModelQuery whereAcceptedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });
  OrderModelQuery whereDeclinedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });
  OrderModelQuery whereCompletedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });
  OrderModelQuery whereTotalAmount({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  OrderModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByTableName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByStoreId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByStatus({
    bool descending = false,
    OrderStatus startAt,
    OrderStatus startAfter,
    OrderStatus endAt,
    OrderStatus endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByOrderType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByItems({
    bool descending = false,
    List<OrderItemModel> startAt,
    List<OrderItemModel> startAfter,
    List<OrderItemModel> endAt,
    List<OrderItemModel> endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByOrderedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByAcceptedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByDeclinedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByCompletedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });

  OrderModelQuery orderByTotalAmount({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  });
}

class _$OrderModelQuery
    extends QueryReference<OrderModel, OrderModelQuerySnapshot>
    implements OrderModelQuery {
  _$OrderModelQuery(
    this._collection, {
    required Query<OrderModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<OrderModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(OrderModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<OrderModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(OrderModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  OrderModelQuery limit(int limit) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  OrderModelQuery limitToLast(int limit) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereDocumentId({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereTableName({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['tableName']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.tableName(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.tableName(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson.tableName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .tableName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson.tableName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .tableName(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.tableName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$OrderModelImplPerFieldToJson.tableName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereStoreId({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['storeId']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.storeId(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.storeId(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson.storeId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .storeId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson.storeId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .storeId(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.storeId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$OrderModelImplPerFieldToJson.storeId(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereStatus({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<OrderStatus>? whereIn,
    List<OrderStatus>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['status']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.status(isEqualTo as OrderStatus)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .status(isNotEqualTo as OrderStatus)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson.status(isLessThan as OrderStatus)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .status(isLessThanOrEqualTo as OrderStatus)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson
                .status(isGreaterThan as OrderStatus)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .status(isGreaterThanOrEqualTo as OrderStatus)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.status(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$OrderModelImplPerFieldToJson.status(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereOrderType({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['orderType']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.orderType(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.orderType(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson.orderType(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .orderType(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson.orderType(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .orderType(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.orderType(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$OrderModelImplPerFieldToJson.orderType(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereItems({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    Object? arrayContains = notSetQueryParam,
    List<OrderItemModel>? arrayContainsAny,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['items']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .items(isEqualTo as List<OrderItemModel>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .items(isNotEqualTo as List<OrderItemModel>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson
                .items(isLessThan as List<OrderItemModel>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .items(isLessThanOrEqualTo as List<OrderItemModel>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson
                .items(isGreaterThan as List<OrderItemModel>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .items(isGreaterThanOrEqualTo as List<OrderItemModel>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$$OrderModelImplPerFieldToJson
                    .items([arrayContains as OrderItemModel]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$$OrderModelImplPerFieldToJson.items(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereOrderedAt({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['orderedAt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.orderedAt(isEqualTo as DateTime)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .orderedAt(isNotEqualTo as DateTime)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson.orderedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .orderedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson
                .orderedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .orderedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.orderedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$OrderModelImplPerFieldToJson.orderedAt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereAcceptedAt({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['acceptedAt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.acceptedAt(isEqualTo as DateTime?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .acceptedAt(isNotEqualTo as DateTime?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson
                .acceptedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .acceptedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson
                .acceptedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .acceptedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.acceptedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$OrderModelImplPerFieldToJson.acceptedAt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereDeclinedAt({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['declinedAt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.declinedAt(isEqualTo as DateTime?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .declinedAt(isNotEqualTo as DateTime?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson
                .declinedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .declinedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson
                .declinedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .declinedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.declinedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$OrderModelImplPerFieldToJson.declinedAt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereCompletedAt({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['completedAt']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .completedAt(isEqualTo as DateTime?)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson
                .completedAt(isNotEqualTo as DateTime?)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson
                .completedAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .completedAt(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson
                .completedAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .completedAt(isGreaterThanOrEqualTo as DateTime?)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.completedAt(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$OrderModelImplPerFieldToJson.completedAt(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery whereTotalAmount({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$OrderModelImplFieldMap['totalAmount']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.totalAmount(isEqualTo as int)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$OrderModelImplPerFieldToJson.totalAmount(isNotEqualTo as int)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$OrderModelImplPerFieldToJson.totalAmount(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .totalAmount(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$OrderModelImplPerFieldToJson.totalAmount(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$OrderModelImplPerFieldToJson
                .totalAmount(isGreaterThanOrEqualTo as int)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$OrderModelImplPerFieldToJson.totalAmount(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$OrderModelImplPerFieldToJson.totalAmount(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  OrderModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByTableName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$OrderModelImplFieldMap['tableName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByStoreId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$OrderModelImplFieldMap['storeId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByStatus({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$OrderModelImplFieldMap['status']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByOrderType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$OrderModelImplFieldMap['orderType']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByItems({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$OrderModelImplFieldMap['items']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByOrderedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$OrderModelImplFieldMap['orderedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByAcceptedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$OrderModelImplFieldMap['acceptedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByDeclinedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$OrderModelImplFieldMap['declinedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByCompletedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$OrderModelImplFieldMap['completedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  OrderModelQuery orderByTotalAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    OrderModelDocumentSnapshot? startAtDocument,
    OrderModelDocumentSnapshot? endAtDocument,
    OrderModelDocumentSnapshot? endBeforeDocument,
    OrderModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$OrderModelImplFieldMap['totalAmount']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$OrderModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$OrderModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class OrderModelDocumentSnapshot extends FirestoreDocumentSnapshot<OrderModel> {
  OrderModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<OrderModel> snapshot;

  @override
  OrderModelDocumentReference get reference {
    return OrderModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final OrderModel? data;
}

class OrderModelQuerySnapshot extends FirestoreQuerySnapshot<OrderModel,
    OrderModelQueryDocumentSnapshot> {
  OrderModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory OrderModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<OrderModel> snapshot,
  ) {
    final docs = snapshot.docs.map(OrderModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        OrderModelDocumentSnapshot._,
      );
    }).toList();

    return OrderModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<OrderModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    OrderModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<OrderModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<OrderModel> snapshot;

  @override
  final List<OrderModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<OrderModelDocumentSnapshot>> docChanges;
}

class OrderModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<OrderModel>
    implements OrderModelDocumentSnapshot {
  OrderModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<OrderModel> snapshot;

  @override
  final OrderModel data;

  @override
  OrderModelDocumentReference get reference {
    return OrderModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['id'] as String? ?? '',
      tableName: json['table_name'] as String,
      storeId: json['store_id'] as String,
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ??
          OrderStatus.wait,
      orderType: json['order_type'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
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
      totalAmount: json['total_amount'] as int,
    );

const _$$OrderModelImplFieldMap = <String, String>{
  'id': 'id',
  'tableName': 'table_name',
  'storeId': 'store_id',
  'status': 'status',
  'orderType': 'order_type',
  'items': 'items',
  'orderedAt': 'ordered_at',
  'acceptedAt': 'accepted_at',
  'declinedAt': 'declined_at',
  'completedAt': 'completed_at',
  'totalAmount': 'total_amount',
};

// ignore: unused_element
abstract class _$$OrderModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? tableName(String instance) => instance;
  // ignore: unused_element
  static Object? storeId(String instance) => instance;
  // ignore: unused_element
  static Object? status(OrderStatus instance) =>
      _$OrderStatusEnumMap[instance]!;
  // ignore: unused_element
  static Object? orderType(String instance) => instance;
  // ignore: unused_element
  static Object? items(List<OrderItemModel> instance) =>
      instance.map((e) => e.toJson()).toList();
  // ignore: unused_element
  static Object? orderedAt(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? acceptedAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? declinedAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? completedAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? totalAmount(int instance) => instance;
}

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'table_name': instance.tableName,
      'store_id': instance.storeId,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'order_type': instance.orderType,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'ordered_at': instance.orderedAt.toIso8601String(),
      'accepted_at': instance.acceptedAt?.toIso8601String(),
      'declined_at': instance.declinedAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'total_amount': instance.totalAmount,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.wait: 'WAIT',
  OrderStatus.accepted: 'ACCEPTED',
  OrderStatus.declined: 'DECLINED',
  OrderStatus.completed: 'COMPLETED',
};
