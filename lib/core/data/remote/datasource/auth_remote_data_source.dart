import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/exception/exception.dart';
import '../../local/datasource/auth_storage.dart';
import '../models/user/sign_in_request_model.dart';
import '../models/user/user_model.dart';

abstract class AuthDataSource {
  Future<Either<ServerFailure, UserModel>> fetchUser(
      {required SignInRequestModel model});
}

@Injectable(as: AuthDataSource)
class AuthDataSourceImpl implements AuthDataSource {
  final AuthStorage _storage;

  AuthDataSourceImpl(this._storage);

  @override
  Future<Either<ServerFailure, UserModel>> fetchUser(
      {required SignInRequestModel model}) {
    return Future(() => const Right(
          UserModel.signedIn(
              email: 'email', password: 'password', storeName: 'storeName'),
        ));
  }
}
