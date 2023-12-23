import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../models/user/sign_in_request_model.dart';
import '../models/user/user_model.dart';
import '../models/user/user_response_model.dart';

abstract class AuthDataSource {
  Future<Either<ServerFailure, UserModel>> fetchUser(
      {required SignInRequestModel model});

  Future<Either<ServerFailure, UserModel>> fetchUserWithEmail(
      {required String email});
}

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  AuthDataSourceImpl();

  @override
  Future<Either<ServerFailure, UserModel>> fetchUser(
      {required SignInRequestModel model}) {
    return userRef.doc(model.email).get().then((value) {
      final data = value.data;
      return switch (data != null && data.password == model.password) {
        true => Right(
            UserModel.signedIn(
                email: data!.email, password: '', storeName: data.storeName),
          ),
        false =>
          const Left(ServerFailure(code: '1', message: '잘못된 이메일 혹은 비밀번호 입니다')),
      };
    });
  }

  @override
  Future<Either<ServerFailure, UserModel>> fetchUserWithEmail(
      {required String email}) {
    return userRef.doc(email).get().then((value) {
      final data = value.data;
      return switch (data != null) {
        true => Right(
            UserModel.signedIn(
                email: data!.email, password: '', storeName: data.storeName),
          ),
        false =>
          const Left(ServerFailure(code: '1', message: '잘못된 이메일 혹은 비밀번호 입니다')),
      };
    });
  }
}
