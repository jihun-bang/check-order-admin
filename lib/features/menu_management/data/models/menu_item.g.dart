// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'menu_item.dart';

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
abstract class MenuItemModelCollectionReference
    implements
        MenuItemModelQuery,
        FirestoreCollectionReference<MenuItemModel,
            MenuItemModelQuerySnapshot> {
  factory MenuItemModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$MenuItemModelCollectionReference;

  static MenuItemModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return MenuItemModel.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    MenuItemModel value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<MenuItemModel> get reference;

  @override
  MenuItemModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MenuItemModelDocumentReference> add(MenuItemModel value);
}

class _$MenuItemModelCollectionReference extends _$MenuItemModelQuery
    implements MenuItemModelCollectionReference {
  factory _$MenuItemModelCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$MenuItemModelCollectionReference._(
      firestore.collection('menus').withConverter(
            fromFirestore: MenuItemModelCollectionReference.fromFirestore,
            toFirestore: MenuItemModelCollectionReference.toFirestore,
          ),
    );
  }

  _$MenuItemModelCollectionReference._(
    CollectionReference<MenuItemModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<MenuItemModel> get reference =>
      super.reference as CollectionReference<MenuItemModel>;

  @override
  MenuItemModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MenuItemModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MenuItemModelDocumentReference> add(MenuItemModel value) {
    return reference
        .add(value)
        .then((ref) => MenuItemModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MenuItemModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MenuItemModelDocumentReference
    extends FirestoreDocumentReference<MenuItemModel,
        MenuItemModelDocumentSnapshot> {
  factory MenuItemModelDocumentReference(
          DocumentReference<MenuItemModel> reference) =
      _$MenuItemModelDocumentReference;

  DocumentReference<MenuItemModel> get reference;

  /// A reference to the [MenuItemModelCollectionReference] containing this document.
  MenuItemModelCollectionReference get parent {
    return _$MenuItemModelCollectionReference(reference.firestore);
  }

  @override
  Stream<MenuItemModelDocumentSnapshot> snapshots();

  @override
  Future<MenuItemModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String category,
    FieldValue categoryFieldValue,
    List<MenuOptionModel> options,
    FieldValue optionsFieldValue,
    String imageUrl60,
    FieldValue imageUrl60FieldValue,
    String imageUrl176,
    FieldValue imageUrl176FieldValue,
    String imageUrl600,
    FieldValue imageUrl600FieldValue,
    int price,
    FieldValue priceFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    bool isPopular,
    FieldValue isPopularFieldValue,
    bool isSoldOut,
    FieldValue isSoldOutFieldValue,
    bool isExposed,
    FieldValue isExposedFieldValue,
    bool isOptionNecessary,
    FieldValue isOptionNecessaryFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String category,
    FieldValue categoryFieldValue,
    List<MenuOptionModel> options,
    FieldValue optionsFieldValue,
    String imageUrl60,
    FieldValue imageUrl60FieldValue,
    String imageUrl176,
    FieldValue imageUrl176FieldValue,
    String imageUrl600,
    FieldValue imageUrl600FieldValue,
    int price,
    FieldValue priceFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    bool isPopular,
    FieldValue isPopularFieldValue,
    bool isSoldOut,
    FieldValue isSoldOutFieldValue,
    bool isExposed,
    FieldValue isExposedFieldValue,
    bool isOptionNecessary,
    FieldValue isOptionNecessaryFieldValue,
  });
}

class _$MenuItemModelDocumentReference extends FirestoreDocumentReference<
    MenuItemModel,
    MenuItemModelDocumentSnapshot> implements MenuItemModelDocumentReference {
  _$MenuItemModelDocumentReference(this.reference);

  @override
  final DocumentReference<MenuItemModel> reference;

  /// A reference to the [MenuItemModelCollectionReference] containing this document.
  MenuItemModelCollectionReference get parent {
    return _$MenuItemModelCollectionReference(reference.firestore);
  }

  @override
  Stream<MenuItemModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MenuItemModelDocumentSnapshot._);
  }

  @override
  Future<MenuItemModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MenuItemModelDocumentSnapshot._);
  }

  @override
  Future<MenuItemModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(MenuItemModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? category = _sentinel,
    FieldValue? categoryFieldValue,
    Object? options = _sentinel,
    FieldValue? optionsFieldValue,
    Object? imageUrl60 = _sentinel,
    FieldValue? imageUrl60FieldValue,
    Object? imageUrl176 = _sentinel,
    FieldValue? imageUrl176FieldValue,
    Object? imageUrl600 = _sentinel,
    FieldValue? imageUrl600FieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? isPopular = _sentinel,
    FieldValue? isPopularFieldValue,
    Object? isSoldOut = _sentinel,
    FieldValue? isSoldOutFieldValue,
    Object? isExposed = _sentinel,
    FieldValue? isExposedFieldValue,
    Object? isOptionNecessary = _sentinel,
    FieldValue? isOptionNecessaryFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      category == _sentinel || categoryFieldValue == null,
      "Cannot specify both category and categoryFieldValue",
    );
    assert(
      options == _sentinel || optionsFieldValue == null,
      "Cannot specify both options and optionsFieldValue",
    );
    assert(
      imageUrl60 == _sentinel || imageUrl60FieldValue == null,
      "Cannot specify both imageUrl60 and imageUrl60FieldValue",
    );
    assert(
      imageUrl176 == _sentinel || imageUrl176FieldValue == null,
      "Cannot specify both imageUrl176 and imageUrl176FieldValue",
    );
    assert(
      imageUrl600 == _sentinel || imageUrl600FieldValue == null,
      "Cannot specify both imageUrl600 and imageUrl600FieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      isPopular == _sentinel || isPopularFieldValue == null,
      "Cannot specify both isPopular and isPopularFieldValue",
    );
    assert(
      isSoldOut == _sentinel || isSoldOutFieldValue == null,
      "Cannot specify both isSoldOut and isSoldOutFieldValue",
    );
    assert(
      isExposed == _sentinel || isExposedFieldValue == null,
      "Cannot specify both isExposed and isExposedFieldValue",
    );
    assert(
      isOptionNecessary == _sentinel || isOptionNecessaryFieldValue == null,
      "Cannot specify both isOptionNecessary and isOptionNecessaryFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$$MenuItemModelImplFieldMap['name']!:
            _$$MenuItemModelImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$$MenuItemModelImplFieldMap['name']!: nameFieldValue,
      if (category != _sentinel)
        _$$MenuItemModelImplFieldMap['category']!:
            _$$MenuItemModelImplPerFieldToJson.category(category as String),
      if (categoryFieldValue != null)
        _$$MenuItemModelImplFieldMap['category']!: categoryFieldValue,
      if (options != _sentinel)
        _$$MenuItemModelImplFieldMap['options']!:
            _$$MenuItemModelImplPerFieldToJson
                .options(options as List<MenuOptionModel>),
      if (optionsFieldValue != null)
        _$$MenuItemModelImplFieldMap['options']!: optionsFieldValue,
      if (imageUrl60 != _sentinel)
        _$$MenuItemModelImplFieldMap['imageUrl60']!:
            _$$MenuItemModelImplPerFieldToJson.imageUrl60(imageUrl60 as String),
      if (imageUrl60FieldValue != null)
        _$$MenuItemModelImplFieldMap['imageUrl60']!: imageUrl60FieldValue,
      if (imageUrl176 != _sentinel)
        _$$MenuItemModelImplFieldMap['imageUrl176']!:
            _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(imageUrl176 as String),
      if (imageUrl176FieldValue != null)
        _$$MenuItemModelImplFieldMap['imageUrl176']!: imageUrl176FieldValue,
      if (imageUrl600 != _sentinel)
        _$$MenuItemModelImplFieldMap['imageUrl600']!:
            _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(imageUrl600 as String),
      if (imageUrl600FieldValue != null)
        _$$MenuItemModelImplFieldMap['imageUrl600']!: imageUrl600FieldValue,
      if (price != _sentinel)
        _$$MenuItemModelImplFieldMap['price']!:
            _$$MenuItemModelImplPerFieldToJson.price(price as int),
      if (priceFieldValue != null)
        _$$MenuItemModelImplFieldMap['price']!: priceFieldValue,
      if (description != _sentinel)
        _$$MenuItemModelImplFieldMap['description']!:
            _$$MenuItemModelImplPerFieldToJson
                .description(description as String),
      if (descriptionFieldValue != null)
        _$$MenuItemModelImplFieldMap['description']!: descriptionFieldValue,
      if (isPopular != _sentinel)
        _$$MenuItemModelImplFieldMap['isPopular']!:
            _$$MenuItemModelImplPerFieldToJson.isPopular(isPopular as bool),
      if (isPopularFieldValue != null)
        _$$MenuItemModelImplFieldMap['isPopular']!: isPopularFieldValue,
      if (isSoldOut != _sentinel)
        _$$MenuItemModelImplFieldMap['isSoldOut']!:
            _$$MenuItemModelImplPerFieldToJson.isSoldOut(isSoldOut as bool),
      if (isSoldOutFieldValue != null)
        _$$MenuItemModelImplFieldMap['isSoldOut']!: isSoldOutFieldValue,
      if (isExposed != _sentinel)
        _$$MenuItemModelImplFieldMap['isExposed']!:
            _$$MenuItemModelImplPerFieldToJson.isExposed(isExposed as bool),
      if (isExposedFieldValue != null)
        _$$MenuItemModelImplFieldMap['isExposed']!: isExposedFieldValue,
      if (isOptionNecessary != _sentinel)
        _$$MenuItemModelImplFieldMap['isOptionNecessary']!:
            _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isOptionNecessary as bool),
      if (isOptionNecessaryFieldValue != null)
        _$$MenuItemModelImplFieldMap['isOptionNecessary']!:
            isOptionNecessaryFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? category = _sentinel,
    FieldValue? categoryFieldValue,
    Object? options = _sentinel,
    FieldValue? optionsFieldValue,
    Object? imageUrl60 = _sentinel,
    FieldValue? imageUrl60FieldValue,
    Object? imageUrl176 = _sentinel,
    FieldValue? imageUrl176FieldValue,
    Object? imageUrl600 = _sentinel,
    FieldValue? imageUrl600FieldValue,
    Object? price = _sentinel,
    FieldValue? priceFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? isPopular = _sentinel,
    FieldValue? isPopularFieldValue,
    Object? isSoldOut = _sentinel,
    FieldValue? isSoldOutFieldValue,
    Object? isExposed = _sentinel,
    FieldValue? isExposedFieldValue,
    Object? isOptionNecessary = _sentinel,
    FieldValue? isOptionNecessaryFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      category == _sentinel || categoryFieldValue == null,
      "Cannot specify both category and categoryFieldValue",
    );
    assert(
      options == _sentinel || optionsFieldValue == null,
      "Cannot specify both options and optionsFieldValue",
    );
    assert(
      imageUrl60 == _sentinel || imageUrl60FieldValue == null,
      "Cannot specify both imageUrl60 and imageUrl60FieldValue",
    );
    assert(
      imageUrl176 == _sentinel || imageUrl176FieldValue == null,
      "Cannot specify both imageUrl176 and imageUrl176FieldValue",
    );
    assert(
      imageUrl600 == _sentinel || imageUrl600FieldValue == null,
      "Cannot specify both imageUrl600 and imageUrl600FieldValue",
    );
    assert(
      price == _sentinel || priceFieldValue == null,
      "Cannot specify both price and priceFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      isPopular == _sentinel || isPopularFieldValue == null,
      "Cannot specify both isPopular and isPopularFieldValue",
    );
    assert(
      isSoldOut == _sentinel || isSoldOutFieldValue == null,
      "Cannot specify both isSoldOut and isSoldOutFieldValue",
    );
    assert(
      isExposed == _sentinel || isExposedFieldValue == null,
      "Cannot specify both isExposed and isExposedFieldValue",
    );
    assert(
      isOptionNecessary == _sentinel || isOptionNecessaryFieldValue == null,
      "Cannot specify both isOptionNecessary and isOptionNecessaryFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$$MenuItemModelImplFieldMap['name']!:
            _$$MenuItemModelImplPerFieldToJson.name(name as String),
      if (nameFieldValue != null)
        _$$MenuItemModelImplFieldMap['name']!: nameFieldValue,
      if (category != _sentinel)
        _$$MenuItemModelImplFieldMap['category']!:
            _$$MenuItemModelImplPerFieldToJson.category(category as String),
      if (categoryFieldValue != null)
        _$$MenuItemModelImplFieldMap['category']!: categoryFieldValue,
      if (options != _sentinel)
        _$$MenuItemModelImplFieldMap['options']!:
            _$$MenuItemModelImplPerFieldToJson
                .options(options as List<MenuOptionModel>),
      if (optionsFieldValue != null)
        _$$MenuItemModelImplFieldMap['options']!: optionsFieldValue,
      if (imageUrl60 != _sentinel)
        _$$MenuItemModelImplFieldMap['imageUrl60']!:
            _$$MenuItemModelImplPerFieldToJson.imageUrl60(imageUrl60 as String),
      if (imageUrl60FieldValue != null)
        _$$MenuItemModelImplFieldMap['imageUrl60']!: imageUrl60FieldValue,
      if (imageUrl176 != _sentinel)
        _$$MenuItemModelImplFieldMap['imageUrl176']!:
            _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(imageUrl176 as String),
      if (imageUrl176FieldValue != null)
        _$$MenuItemModelImplFieldMap['imageUrl176']!: imageUrl176FieldValue,
      if (imageUrl600 != _sentinel)
        _$$MenuItemModelImplFieldMap['imageUrl600']!:
            _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(imageUrl600 as String),
      if (imageUrl600FieldValue != null)
        _$$MenuItemModelImplFieldMap['imageUrl600']!: imageUrl600FieldValue,
      if (price != _sentinel)
        _$$MenuItemModelImplFieldMap['price']!:
            _$$MenuItemModelImplPerFieldToJson.price(price as int),
      if (priceFieldValue != null)
        _$$MenuItemModelImplFieldMap['price']!: priceFieldValue,
      if (description != _sentinel)
        _$$MenuItemModelImplFieldMap['description']!:
            _$$MenuItemModelImplPerFieldToJson
                .description(description as String),
      if (descriptionFieldValue != null)
        _$$MenuItemModelImplFieldMap['description']!: descriptionFieldValue,
      if (isPopular != _sentinel)
        _$$MenuItemModelImplFieldMap['isPopular']!:
            _$$MenuItemModelImplPerFieldToJson.isPopular(isPopular as bool),
      if (isPopularFieldValue != null)
        _$$MenuItemModelImplFieldMap['isPopular']!: isPopularFieldValue,
      if (isSoldOut != _sentinel)
        _$$MenuItemModelImplFieldMap['isSoldOut']!:
            _$$MenuItemModelImplPerFieldToJson.isSoldOut(isSoldOut as bool),
      if (isSoldOutFieldValue != null)
        _$$MenuItemModelImplFieldMap['isSoldOut']!: isSoldOutFieldValue,
      if (isExposed != _sentinel)
        _$$MenuItemModelImplFieldMap['isExposed']!:
            _$$MenuItemModelImplPerFieldToJson.isExposed(isExposed as bool),
      if (isExposedFieldValue != null)
        _$$MenuItemModelImplFieldMap['isExposed']!: isExposedFieldValue,
      if (isOptionNecessary != _sentinel)
        _$$MenuItemModelImplFieldMap['isOptionNecessary']!:
            _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isOptionNecessary as bool),
      if (isOptionNecessaryFieldValue != null)
        _$$MenuItemModelImplFieldMap['isOptionNecessary']!:
            isOptionNecessaryFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MenuItemModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MenuItemModelQuery
    implements QueryReference<MenuItemModel, MenuItemModelQuerySnapshot> {
  @override
  MenuItemModelQuery limit(int limit);

  @override
  MenuItemModelQuery limitToLast(int limit);

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
  MenuItemModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
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
  MenuItemModelQuery whereFieldPath(
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

  MenuItemModelQuery whereDocumentId({
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
  MenuItemModelQuery whereName({
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
  MenuItemModelQuery whereCategory({
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
  MenuItemModelQuery whereOptions({
    List<MenuOptionModel>? isEqualTo,
    List<MenuOptionModel>? isNotEqualTo,
    List<MenuOptionModel>? isLessThan,
    List<MenuOptionModel>? isLessThanOrEqualTo,
    List<MenuOptionModel>? isGreaterThan,
    List<MenuOptionModel>? isGreaterThanOrEqualTo,
    bool? isNull,
    MenuOptionModel? arrayContains,
    List<MenuOptionModel>? arrayContainsAny,
  });
  MenuItemModelQuery whereImageUrl60({
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
  MenuItemModelQuery whereImageUrl176({
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
  MenuItemModelQuery whereImageUrl600({
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
  MenuItemModelQuery wherePrice({
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
  MenuItemModelQuery whereDescription({
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
  MenuItemModelQuery whereIsPopular({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MenuItemModelQuery whereIsSoldOut({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MenuItemModelQuery whereIsExposed({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MenuItemModelQuery whereIsOptionNecessary({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });

  MenuItemModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByCategory({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByOptions({
    bool descending = false,
    List<MenuOptionModel> startAt,
    List<MenuOptionModel> startAfter,
    List<MenuOptionModel> endAt,
    List<MenuOptionModel> endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByImageUrl60({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByImageUrl176({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByImageUrl600({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByPrice({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByIsPopular({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByIsSoldOut({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByIsExposed({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });

  MenuItemModelQuery orderByIsOptionNecessary({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  });
}

class _$MenuItemModelQuery
    extends QueryReference<MenuItemModel, MenuItemModelQuerySnapshot>
    implements MenuItemModelQuery {
  _$MenuItemModelQuery(
    this._collection, {
    required Query<MenuItemModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MenuItemModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(MenuItemModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MenuItemModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(MenuItemModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MenuItemModelQuery limit(int limit) {
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MenuItemModelQuery limitToLast(int limit) {
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery whereFieldPath(
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
    return _$MenuItemModelQuery(
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

  MenuItemModelQuery whereDocumentId({
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
    return _$MenuItemModelQuery(
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

  MenuItemModelQuery whereName({
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['name']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.name(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.name(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .name(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$MenuItemModelImplPerFieldToJson.name(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$MenuItemModelImplPerFieldToJson.name(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereCategory({
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['category']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.category(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .category(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson.category(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .category(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .category(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .category(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$MenuItemModelImplPerFieldToJson.category(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.category(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereOptions({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    Object? arrayContains = notSetQueryParam,
    List<MenuOptionModel>? arrayContainsAny,
  }) {
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['options']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .options(isEqualTo as List<MenuOptionModel>)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .options(isNotEqualTo as List<MenuOptionModel>)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .options(isLessThan as List<MenuOptionModel>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .options(isLessThanOrEqualTo as List<MenuOptionModel>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .options(isGreaterThan as List<MenuOptionModel>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .options(isGreaterThanOrEqualTo as List<MenuOptionModel>)
            : null,
        isNull: isNull,
        arrayContains: arrayContains != null
            ? (_$$MenuItemModelImplPerFieldToJson
                    .options([arrayContains as MenuOptionModel]) as List?)!
                .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$$MenuItemModelImplPerFieldToJson.options(arrayContainsAny)
                as Iterable<Object>?
            : null,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereImageUrl60({
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['imageUrl60']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.imageUrl60(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl60(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl60(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl60(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl60(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl60(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.imageUrl60(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.imageUrl60(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereImageUrl176({
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['imageUrl176']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl176(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.imageUrl176(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.imageUrl176(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereImageUrl600({
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['imageUrl600']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .imageUrl600(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.imageUrl600(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.imageUrl600(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery wherePrice({
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['price']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.price(isEqualTo as int)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.price(isNotEqualTo as int)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson.price(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .price(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson.price(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .price(isGreaterThanOrEqualTo as int)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$$MenuItemModelImplPerFieldToJson.price(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$$MenuItemModelImplPerFieldToJson.price(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereDescription({
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
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['description']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .description(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .description(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.description(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.description(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereIsPopular({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['isPopular']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.isPopular(isEqualTo as bool)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.isPopular(isNotEqualTo as bool)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson.isPopular(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isPopular(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isPopular(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isPopular(isGreaterThanOrEqualTo as bool)
            : null,
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.isPopular(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.isPopular(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereIsSoldOut({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['isSoldOut']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.isSoldOut(isEqualTo as bool)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.isSoldOut(isNotEqualTo as bool)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson.isSoldOut(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isSoldOut(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isSoldOut(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isSoldOut(isGreaterThanOrEqualTo as bool)
            : null,
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.isSoldOut(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.isSoldOut(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereIsExposed({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['isExposed']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.isExposed(isEqualTo as bool)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson.isExposed(isNotEqualTo as bool)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson.isExposed(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isExposed(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isExposed(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isExposed(isGreaterThanOrEqualTo as bool)
            : null,
        isNull: isNull,
        whereIn: whereIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.isExposed(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$$MenuItemModelImplPerFieldToJson.isExposed(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery whereIsOptionNecessary({
    Object? isEqualTo = notSetQueryParam,
    Object? isNotEqualTo = notSetQueryParam,
    Object? isLessThan = null,
    Object? isLessThanOrEqualTo = null,
    Object? isGreaterThan = null,
    Object? isGreaterThanOrEqualTo = null,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$$MenuItemModelImplFieldMap['isOptionNecessary']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isEqualTo as bool)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isNotEqualTo as bool)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$$MenuItemModelImplPerFieldToJson
                .isOptionNecessary(isGreaterThanOrEqualTo as bool)
            : null,
        isNull: isNull,
        whereIn: whereIn?.map(
            (e) => _$$MenuItemModelImplPerFieldToJson.isOptionNecessary(e)),
        whereNotIn: whereNotIn?.map(
            (e) => _$$MenuItemModelImplPerFieldToJson.isOptionNecessary(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  MenuItemModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$$MenuItemModelImplFieldMap['name']!, descending: descending);
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByCategory({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['category']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByOptions({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['options']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByImageUrl60({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['imageUrl60']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByImageUrl176({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['imageUrl176']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByImageUrl600({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['imageUrl600']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['price']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['description']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByIsPopular({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['isPopular']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByIsSoldOut({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['isSoldOut']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByIsExposed({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['isExposed']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MenuItemModelQuery orderByIsOptionNecessary({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MenuItemModelDocumentSnapshot? startAtDocument,
    MenuItemModelDocumentSnapshot? endAtDocument,
    MenuItemModelDocumentSnapshot? endBeforeDocument,
    MenuItemModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$$MenuItemModelImplFieldMap['isOptionNecessary']!,
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

    return _$MenuItemModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MenuItemModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MenuItemModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<MenuItemModel> {
  MenuItemModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<MenuItemModel> snapshot;

  @override
  MenuItemModelDocumentReference get reference {
    return MenuItemModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final MenuItemModel? data;
}

class MenuItemModelQuerySnapshot extends FirestoreQuerySnapshot<MenuItemModel,
    MenuItemModelQueryDocumentSnapshot> {
  MenuItemModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MenuItemModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<MenuItemModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(MenuItemModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MenuItemModelDocumentSnapshot._,
      );
    }).toList();

    return MenuItemModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MenuItemModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MenuItemModelDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MenuItemModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<MenuItemModel> snapshot;

  @override
  final List<MenuItemModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MenuItemModelDocumentSnapshot>> docChanges;
}

class MenuItemModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<MenuItemModel>
    implements MenuItemModelDocumentSnapshot {
  MenuItemModelQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<MenuItemModel> snapshot;

  @override
  final MenuItemModel data;

  @override
  MenuItemModelDocumentReference get reference {
    return MenuItemModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuItemModelImpl _$$MenuItemModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemModelImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String,
      category: json['category'] as String,
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => MenuOptionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      imageUrl60: json['image_url60'] as String? ?? '',
      imageUrl176: json['image_url176'] as String? ?? '',
      imageUrl600: json['image_url600'] as String? ?? '',
      price: json['price'] as int? ?? 0,
      description: json['description'] as String? ?? '',
      isPopular: json['is_popular'] as bool? ?? false,
      isSoldOut: json['is_sold_out'] as bool? ?? false,
      isExposed: json['is_exposed'] as bool? ?? true,
      isOptionNecessary: json['is_option_necessary'] as bool? ?? false,
    );

const _$$MenuItemModelImplFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'category': 'category',
  'options': 'options',
  'imageUrl60': 'image_url60',
  'imageUrl176': 'image_url176',
  'imageUrl600': 'image_url600',
  'price': 'price',
  'description': 'description',
  'isPopular': 'is_popular',
  'isSoldOut': 'is_sold_out',
  'isExposed': 'is_exposed',
  'isOptionNecessary': 'is_option_necessary',
};

// ignore: unused_element
abstract class _$$MenuItemModelImplPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? category(String instance) => instance;
  // ignore: unused_element
  static Object? options(List<MenuOptionModel> instance) =>
      instance.map((e) => e.toJson()).toList();
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
  // ignore: unused_element
  static Object? isExposed(bool instance) => instance;
  // ignore: unused_element
  static Object? isOptionNecessary(bool instance) => instance;
}

Map<String, dynamic> _$$MenuItemModelImplToJson(_$MenuItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'image_url60': instance.imageUrl60,
      'image_url176': instance.imageUrl176,
      'image_url600': instance.imageUrl600,
      'price': instance.price,
      'description': instance.description,
      'is_popular': instance.isPopular,
      'is_sold_out': instance.isSoldOut,
      'is_exposed': instance.isExposed,
      'is_option_necessary': instance.isOptionNecessary,
    };
