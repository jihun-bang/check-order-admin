import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';
part 'exception.g.dart';

@freezed
class ServerFailure with _$ServerFailure {
  const factory ServerFailure({
    required String code,
    required String message,
  }) = _ServerFailure;

  const factory ServerFailure.def(
      [@Default('-1') String code,
      @Default('Unknown error occurred') String message]) = Default;

  factory ServerFailure.fromJson(Map<String, dynamic> json) =>
      _$ServerFailureFromJson(json);
}
