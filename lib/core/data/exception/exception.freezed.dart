// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerFailure _$ServerFailureFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _ServerFailure.fromJson(json);
    case 'def':
      return Default.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ServerFailure',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ServerFailure {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code, String message) $default, {
    required TResult Function(String code, String message) def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String code, String message)? $default, {
    TResult? Function(String code, String message)? def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code, String message)? $default, {
    TResult Function(String code, String message)? def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerFailure value) $default, {
    required TResult Function(Default value) def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerFailure value)? $default, {
    TResult? Function(Default value)? def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(Default value)? def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res, ServerFailure>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res, $Val extends ServerFailure>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl(
      {required this.code, required this.message, final String? $type})
      : $type = $type ?? 'default';

  factory _$ServerFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerFailureImplFromJson(json);

  @override
  final String code;
  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ServerFailure(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code, String message) $default, {
    required TResult Function(String code, String message) def,
  }) {
    return $default(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String code, String message)? $default, {
    TResult? Function(String code, String message)? def,
  }) {
    return $default?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code, String message)? $default, {
    TResult Function(String code, String message)? def,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerFailure value) $default, {
    required TResult Function(Default value) def,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerFailure value)? $default, {
    TResult? Function(Default value)? def,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(Default value)? def,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerFailureImplToJson(
      this,
    );
  }
}

abstract class _ServerFailure implements ServerFailure {
  const factory _ServerFailure(
      {required final String code,
      required final String message}) = _$ServerFailureImpl;

  factory _ServerFailure.fromJson(Map<String, dynamic> json) =
      _$ServerFailureImpl.fromJson;

  @override
  String get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DefaultImplCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$DefaultImplCopyWith(
          _$DefaultImpl value, $Res Function(_$DefaultImpl) then) =
      __$$DefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$DefaultImplCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res, _$DefaultImpl>
    implements _$$DefaultImplCopyWith<$Res> {
  __$$DefaultImplCopyWithImpl(
      _$DefaultImpl _value, $Res Function(_$DefaultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$DefaultImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultImpl implements Default {
  const _$DefaultImpl(
      [this.code = '-1',
      this.message = 'Unknown error occurred',
      final String? $type])
      : $type = $type ?? 'def';

  factory _$DefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultImplFromJson(json);

  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ServerFailure.def(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      __$$DefaultImplCopyWithImpl<_$DefaultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code, String message) $default, {
    required TResult Function(String code, String message) def,
  }) {
    return def(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String code, String message)? $default, {
    TResult? Function(String code, String message)? def,
  }) {
    return def?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code, String message)? $default, {
    TResult Function(String code, String message)? def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerFailure value) $default, {
    required TResult Function(Default value) def,
  }) {
    return def(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerFailure value)? $default, {
    TResult? Function(Default value)? def,
  }) {
    return def?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerFailure value)? $default, {
    TResult Function(Default value)? def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultImplToJson(
      this,
    );
  }
}

abstract class Default implements ServerFailure {
  const factory Default([final String code, final String message]) =
      _$DefaultImpl;

  factory Default.fromJson(Map<String, dynamic> json) = _$DefaultImpl.fromJson;

  @override
  String get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DefaultImplCopyWith<_$DefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
