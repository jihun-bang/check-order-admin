import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

extension IntExtensions on int {
  String toCommaString([String suffix = '']) {
    return NumberFormat('#,###$suffix').format(this);
  }
}

extension ResponseExtensions on Response {
  T model<T>(T Function(dynamic response) converter) {
    return converter(data['data']);
  }

  bool get isSuccess => data['data'] == 'SUCCESS';
}
