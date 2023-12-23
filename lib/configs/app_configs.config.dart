// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:check_order_admin/core/data/local/datasource/auth_storage.dart'
    as _i5;
import 'package:check_order_admin/core/data/local/storage/storage.dart' as _i4;
import 'package:check_order_admin/core/data/remote/datasource/auth_remote_data_source.dart'
    as _i6;
import 'package:check_order_admin/core/data/remote/repositories/auth_repository_impl.dart'
    as _i8;
import 'package:check_order_admin/core/domain/repositories/auth_repository.dart'
    as _i7;
import 'package:check_order_admin/core/domain/usecases/auth_usecase.dart'
    as _i9;
import 'package:check_order_admin/core/theme/colors.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppColors>(_i3.AppColors());
    await gh.singletonAsync<_i4.AppStorage>(
      () {
        final i = _i4.AppStorage();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.singleton<_i5.AuthStorage>(_i5.AuthStorage(gh<_i4.AppStorage>()));
    gh.factory<_i6.AuthDataSource>(
        () => _i6.AuthDataSourceImpl(gh<_i5.AuthStorage>()));
    gh.factory<_i7.AuthRepository>(() => _i8.AuthRepositoryImpl(
          gh<_i6.AuthDataSource>(),
          gh<_i5.AuthStorage>(),
        ));
    gh.factory<_i9.AuthUseCase>(() => _i9.AuthUseCase(
          gh<_i7.AuthRepository>(),
          gh<_i5.AuthStorage>(),
        ));
    return this;
  }
}
