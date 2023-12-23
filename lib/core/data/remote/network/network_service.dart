import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../exception/exception.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<ServerFailure, Response>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<ServerFailure, Response>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  Future<Either<ServerFailure, Response>> put(
    String endpoint, {
    Map<String, dynamic>? data,
  });

  Future<Either<ServerFailure, Response>> delete(
    String endpoint, {
    Map<String, dynamic>? data,
  });
}
