// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'signedIn':
      return SignedIn.fromJson(json);
    case 'signedOut':
      return SignedOut.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String storeName)
        signedIn,
    required TResult Function(String? message) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String storeName)?
        signedIn,
    TResult? Function(String? message)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String storeName)? signedIn,
    TResult Function(String? message)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignedInImplCopyWith<$Res> {
  factory _$$SignedInImplCopyWith(
          _$SignedInImpl value, $Res Function(_$SignedInImpl) then) =
      __$$SignedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String storeName});
}

/// @nodoc
class __$$SignedInImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$SignedInImpl>
    implements _$$SignedInImplCopyWith<$Res> {
  __$$SignedInImplCopyWithImpl(
      _$SignedInImpl _value, $Res Function(_$SignedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? storeName = null,
  }) {
    return _then(_$SignedInImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      storeName: null == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SignedInImpl extends SignedIn {
  const _$SignedInImpl(
      {required this.email,
      required this.password,
      required this.storeName,
      final String? $type})
      : $type = $type ?? 'signedIn',
        super._();

  factory _$SignedInImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedInImplFromJson(json);

  @override
  final String email;

  /// TODO 실제 auth 들어가면 삭제
  @override
  final String password;
  @override
  final String storeName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserModel.signedIn(email: $email, password: $password, storeName: $storeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password, storeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedInImplCopyWith<_$SignedInImpl> get copyWith =>
      __$$SignedInImplCopyWithImpl<_$SignedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String storeName)
        signedIn,
    required TResult Function(String? message) signedOut,
  }) {
    return signedIn(email, password, storeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String storeName)?
        signedIn,
    TResult? Function(String? message)? signedOut,
  }) {
    return signedIn?.call(email, password, storeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String storeName)? signedIn,
    TResult Function(String? message)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(email, password, storeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedInImplToJson(
      this,
    );
  }
}

abstract class SignedIn extends UserModel {
  const factory SignedIn(
      {required final String email,
      required final String password,
      required final String storeName}) = _$SignedInImpl;
  const SignedIn._() : super._();

  factory SignedIn.fromJson(Map<String, dynamic> json) =
      _$SignedInImpl.fromJson;

  String get email;

  /// TODO 실제 auth 들어가면 삭제
  String get password;
  String get storeName;
  @JsonKey(ignore: true)
  _$$SignedInImplCopyWith<_$SignedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignedOutImplCopyWith<$Res> {
  factory _$$SignedOutImplCopyWith(
          _$SignedOutImpl value, $Res Function(_$SignedOutImpl) then) =
      __$$SignedOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SignedOutImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$SignedOutImpl>
    implements _$$SignedOutImplCopyWith<$Res> {
  __$$SignedOutImplCopyWithImpl(
      _$SignedOutImpl _value, $Res Function(_$SignedOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SignedOutImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignedOutImpl extends SignedOut {
  const _$SignedOutImpl([this.message, final String? $type])
      : $type = $type ?? 'signedOut',
        super._();

  factory _$SignedOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignedOutImplFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserModel.signedOut(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignedOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignedOutImplCopyWith<_$SignedOutImpl> get copyWith =>
      __$$SignedOutImplCopyWithImpl<_$SignedOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String storeName)
        signedIn,
    required TResult Function(String? message) signedOut,
  }) {
    return signedOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String storeName)?
        signedIn,
    TResult? Function(String? message)? signedOut,
  }) {
    return signedOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String storeName)? signedIn,
    TResult Function(String? message)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignedIn value) signedIn,
    required TResult Function(SignedOut value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignedIn value)? signedIn,
    TResult? Function(SignedOut value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignedIn value)? signedIn,
    TResult Function(SignedOut value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignedOutImplToJson(
      this,
    );
  }
}

abstract class SignedOut extends UserModel {
  const factory SignedOut([final String? message]) = _$SignedOutImpl;
  const SignedOut._() : super._();

  factory SignedOut.fromJson(Map<String, dynamic> json) =
      _$SignedOutImpl.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$SignedOutImplCopyWith<_$SignedOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
