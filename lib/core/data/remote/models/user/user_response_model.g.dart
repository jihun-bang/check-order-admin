// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'user_response_model.dart';

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
abstract class UserResponseModelCollectionReference
    implements
        UserResponseModelQuery,
        FirestoreCollectionReference<UserResponseModel,
            UserResponseModelQuerySnapshot> {
  factory UserResponseModelCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserResponseModelCollectionReference;

  static UserResponseModel fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserResponseModelFromJson(
        {'email': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    UserResponseModel value,
    SetOptions? options,
  ) {
    return {..._$UserResponseModelToJson(value)}..remove('email');
  }

  @override
  CollectionReference<UserResponseModel> get reference;

  @override
  UserResponseModelDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserResponseModelDocumentReference> add(UserResponseModel value);
}

class _$UserResponseModelCollectionReference extends _$UserResponseModelQuery
    implements UserResponseModelCollectionReference {
  factory _$UserResponseModelCollectionReference(
      [FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserResponseModelCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UserResponseModelCollectionReference.fromFirestore,
            toFirestore: UserResponseModelCollectionReference.toFirestore,
          ),
    );
  }

  _$UserResponseModelCollectionReference._(
    CollectionReference<UserResponseModel> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<UserResponseModel> get reference =>
      super.reference as CollectionReference<UserResponseModel>;

  @override
  UserResponseModelDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserResponseModelDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserResponseModelDocumentReference> add(UserResponseModel value) {
    return reference
        .add(value)
        .then((ref) => UserResponseModelDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserResponseModelCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserResponseModelDocumentReference
    extends FirestoreDocumentReference<UserResponseModel,
        UserResponseModelDocumentSnapshot> {
  factory UserResponseModelDocumentReference(
          DocumentReference<UserResponseModel> reference) =
      _$UserResponseModelDocumentReference;

  DocumentReference<UserResponseModel> get reference;

  /// A reference to the [UserResponseModelCollectionReference] containing this document.
  UserResponseModelCollectionReference get parent {
    return _$UserResponseModelCollectionReference(reference.firestore);
  }

  @override
  Stream<UserResponseModelDocumentSnapshot> snapshots();

  @override
  Future<UserResponseModelDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String storeName,
    FieldValue storeNameFieldValue,
    String password,
    FieldValue passwordFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String storeName,
    FieldValue storeNameFieldValue,
    String password,
    FieldValue passwordFieldValue,
  });
}

class _$UserResponseModelDocumentReference extends FirestoreDocumentReference<
        UserResponseModel, UserResponseModelDocumentSnapshot>
    implements UserResponseModelDocumentReference {
  _$UserResponseModelDocumentReference(this.reference);

  @override
  final DocumentReference<UserResponseModel> reference;

  /// A reference to the [UserResponseModelCollectionReference] containing this document.
  UserResponseModelCollectionReference get parent {
    return _$UserResponseModelCollectionReference(reference.firestore);
  }

  @override
  Stream<UserResponseModelDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserResponseModelDocumentSnapshot._);
  }

  @override
  Future<UserResponseModelDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserResponseModelDocumentSnapshot._);
  }

  @override
  Future<UserResponseModelDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(UserResponseModelDocumentSnapshot._);
  }

  Future<void> update({
    Object? storeName = _sentinel,
    FieldValue? storeNameFieldValue,
    Object? password = _sentinel,
    FieldValue? passwordFieldValue,
  }) async {
    assert(
      storeName == _sentinel || storeNameFieldValue == null,
      "Cannot specify both storeName and storeNameFieldValue",
    );
    assert(
      password == _sentinel || passwordFieldValue == null,
      "Cannot specify both password and passwordFieldValue",
    );
    final json = {
      if (storeName != _sentinel)
        _$UserResponseModelFieldMap['storeName']!:
            _$UserResponseModelPerFieldToJson.storeName(storeName as String),
      if (storeNameFieldValue != null)
        _$UserResponseModelFieldMap['storeName']!: storeNameFieldValue,
      if (password != _sentinel)
        _$UserResponseModelFieldMap['password']!:
            _$UserResponseModelPerFieldToJson.password(password as String),
      if (passwordFieldValue != null)
        _$UserResponseModelFieldMap['password']!: passwordFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? storeName = _sentinel,
    FieldValue? storeNameFieldValue,
    Object? password = _sentinel,
    FieldValue? passwordFieldValue,
  }) {
    assert(
      storeName == _sentinel || storeNameFieldValue == null,
      "Cannot specify both storeName and storeNameFieldValue",
    );
    assert(
      password == _sentinel || passwordFieldValue == null,
      "Cannot specify both password and passwordFieldValue",
    );
    final json = {
      if (storeName != _sentinel)
        _$UserResponseModelFieldMap['storeName']!:
            _$UserResponseModelPerFieldToJson.storeName(storeName as String),
      if (storeNameFieldValue != null)
        _$UserResponseModelFieldMap['storeName']!: storeNameFieldValue,
      if (password != _sentinel)
        _$UserResponseModelFieldMap['password']!:
            _$UserResponseModelPerFieldToJson.password(password as String),
      if (passwordFieldValue != null)
        _$UserResponseModelFieldMap['password']!: passwordFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserResponseModelDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserResponseModelQuery
    implements
        QueryReference<UserResponseModel, UserResponseModelQuerySnapshot> {
  @override
  UserResponseModelQuery limit(int limit);

  @override
  UserResponseModelQuery limitToLast(int limit);

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
  UserResponseModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
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
  UserResponseModelQuery whereFieldPath(
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

  UserResponseModelQuery whereDocumentId({
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
  UserResponseModelQuery whereStoreName({
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
  UserResponseModelQuery wherePassword({
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

  UserResponseModelQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
  });

  UserResponseModelQuery orderByStoreName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
  });

  UserResponseModelQuery orderByPassword({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
  });
}

class _$UserResponseModelQuery
    extends QueryReference<UserResponseModel, UserResponseModelQuerySnapshot>
    implements UserResponseModelQuery {
  _$UserResponseModelQuery(
    this._collection, {
    required Query<UserResponseModel> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserResponseModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(UserResponseModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserResponseModelQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserResponseModelQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserResponseModelQuery limit(int limit) {
    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserResponseModelQuery limitToLast(int limit) {
    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  UserResponseModelQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
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
    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserResponseModelQuery whereFieldPath(
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
    return _$UserResponseModelQuery(
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

  UserResponseModelQuery whereDocumentId({
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
    return _$UserResponseModelQuery(
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

  UserResponseModelQuery whereStoreName({
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
    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserResponseModelFieldMap['storeName']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$UserResponseModelPerFieldToJson.storeName(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$UserResponseModelPerFieldToJson
                .storeName(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$UserResponseModelPerFieldToJson.storeName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserResponseModelPerFieldToJson
                .storeName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserResponseModelPerFieldToJson
                .storeName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserResponseModelPerFieldToJson
                .storeName(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$UserResponseModelPerFieldToJson.storeName(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$UserResponseModelPerFieldToJson.storeName(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserResponseModelQuery wherePassword({
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
    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserResponseModelFieldMap['password']!,
        isEqualTo: isEqualTo != notSetQueryParam
            ? _$UserResponseModelPerFieldToJson.password(isEqualTo as String)
            : notSetQueryParam,
        isNotEqualTo: isNotEqualTo != notSetQueryParam
            ? _$UserResponseModelPerFieldToJson.password(isNotEqualTo as String)
            : notSetQueryParam,
        isLessThan: isLessThan != null
            ? _$UserResponseModelPerFieldToJson.password(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserResponseModelPerFieldToJson
                .password(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserResponseModelPerFieldToJson
                .password(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserResponseModelPerFieldToJson
                .password(isGreaterThanOrEqualTo as String)
            : null,
        isNull: isNull,
        whereIn:
            whereIn?.map((e) => _$UserResponseModelPerFieldToJson.password(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$UserResponseModelPerFieldToJson.password(e)),
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserResponseModelQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
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

    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserResponseModelQuery orderByStoreName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$UserResponseModelFieldMap['storeName']!,
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

    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserResponseModelQuery orderByPassword({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserResponseModelDocumentSnapshot? startAtDocument,
    UserResponseModelDocumentSnapshot? endAtDocument,
    UserResponseModelDocumentSnapshot? endBeforeDocument,
    UserResponseModelDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$UserResponseModelFieldMap['password']!,
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

    return _$UserResponseModelQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserResponseModelQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserResponseModelDocumentSnapshot
    extends FirestoreDocumentSnapshot<UserResponseModel> {
  UserResponseModelDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserResponseModel> snapshot;

  @override
  UserResponseModelDocumentReference get reference {
    return UserResponseModelDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserResponseModel? data;
}

class UserResponseModelQuerySnapshot extends FirestoreQuerySnapshot<
    UserResponseModel, UserResponseModelQueryDocumentSnapshot> {
  UserResponseModelQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserResponseModelQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserResponseModel> snapshot,
  ) {
    final docs =
        snapshot.docs.map(UserResponseModelQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserResponseModelDocumentSnapshot._,
      );
    }).toList();

    return UserResponseModelQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserResponseModelDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserResponseModelDocumentSnapshot Function(DocumentSnapshot<T> doc)
        decodeDoc,
  ) {
    return FirestoreDocumentChange<UserResponseModelDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserResponseModel> snapshot;

  @override
  final List<UserResponseModelQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserResponseModelDocumentSnapshot>>
      docChanges;
}

class UserResponseModelQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserResponseModel>
    implements UserResponseModelDocumentSnapshot {
  UserResponseModelQueryDocumentSnapshot._(this.snapshot)
      : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserResponseModel> snapshot;

  @override
  final UserResponseModel data;

  @override
  UserResponseModelDocumentReference get reference {
    return UserResponseModelDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) =>
    UserResponseModel(
      email: json['email'] as String,
      password: json['password'] as String,
      storeName: json['store_name'] as String,
    );

const _$UserResponseModelFieldMap = <String, String>{
  'email': 'email',
  'storeName': 'store_name',
  'password': 'password',
};

// ignore: unused_element
abstract class _$UserResponseModelPerFieldToJson {
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? storeName(String instance) => instance;
  // ignore: unused_element
  static Object? password(String instance) => instance;
}

Map<String, dynamic> _$UserResponseModelToJson(UserResponseModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'store_name': instance.storeName,
      'password': instance.password,
    };
