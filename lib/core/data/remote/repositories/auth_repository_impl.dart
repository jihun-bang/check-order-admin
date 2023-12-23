import 'package:check_order_admin/core/data/exception/exception.dart';
import 'package:check_order_admin/core/data/local/datasource/auth_storage.dart';
import 'package:check_order_admin/core/data/remote/models/user/sign_in_request_model.dart';
import 'package:check_order_admin/core/data/remote/models/user/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/remote/datasource/auth_remote_data_source.dart';
import '../../../domain/repositories/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _authDataSource;
  final AuthStorage _storage;

  AuthRepositoryImpl(this._authDataSource, this._storage);

  @override
  Future<Either<ServerFailure, UserModel>> fetchUser(
      {required SignInRequestModel model}) {
    return _authDataSource.fetchUser(model: model);
  }

  @override
  Future<Either<ServerFailure, UserModel>> fetchUserWithEmail() {
    return _authDataSource.fetchUser(
        model: const SignInRequestModel(email: 'email', password: 'password'));
  }
}
