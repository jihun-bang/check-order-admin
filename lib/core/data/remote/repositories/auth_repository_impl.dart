import 'package:check_order_admin/core/data/exception/exception.dart';
import 'package:check_order_admin/core/data/remote/models/user/sign_in_request_model.dart';
import 'package:check_order_admin/core/data/remote/models/user/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/remote/datasource/auth_remote_data_source.dart';
import '../../../domain/repositories/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<Either<ServerFailure, UserModel>> fetchUser(
      {required SignInRequestModel model}) {
    return _authDataSource.fetchUser(model: model);
  }

  @override
  Future<Either<ServerFailure, UserModel>> fetchUserWithEmail(
      {required String email}) {
    return _authDataSource.fetchUserWithEmail(email: email);
  }
}
