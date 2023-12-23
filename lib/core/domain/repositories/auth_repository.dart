import 'package:dartz/dartz.dart';

import '../../../../core/data/exception/exception.dart';
import '../../data/remote/models/user/sign_in_request_model.dart';
import '../../data/remote/models/user/user_model.dart';

abstract class AuthRepository {
  Future<Either<ServerFailure, UserModel>> fetchUser(
      {required SignInRequestModel model});

  Future<Either<ServerFailure, UserModel>> fetchUserWithEmail(
      {required String email});
}
