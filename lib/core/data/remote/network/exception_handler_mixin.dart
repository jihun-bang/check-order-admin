import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../utils/logger.dart';
import '../../exception/exception.dart';
import 'network_service.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<ServerFailure, Response>> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endpoint = ''}) async {
    try {
      final res = await handler();
      return switch (res.statusCode) {
        200 => Right(
            Response(
              statusCode: res.statusCode ?? 200,
              data: res.data,
              statusMessage: res.statusMessage,
              requestOptions: res.requestOptions,
            ),
          ),
        _ => Left(
            ServerFailure.fromJson(res.data),
          )
      };
    } catch (e) {
      final (message, statusCode) = switch (e.runtimeType) {
        SocketException => ('Unable to connect to the server.', '0'),
        DioException => (
            (e as DioException).response?.statusCode == 502
                ? 'Internal Error occurred'
                : e.response?.data['message'] ?? 'Internal Error occurred',
            e.response?.statusCode == 502
                ? '502'
                : e.response?.data['code'] ??
                    e.response?.statusCode.toString() ??
                    '1'
          ),
        _ => ('Unknown error occurred', '2'),
      };
      final error = ServerFailure(
        message: message,
        code: statusCode,
      );
      Logger.e(error);
      return Left(error);
    }
  }
}
