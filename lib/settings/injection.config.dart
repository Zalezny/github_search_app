// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:github_search_app/data/datasources/github_repo_api_service.dart'
    as _i792;
import 'package:github_search_app/data/datasources/github_users_api_service.dart'
    as _i537;
import 'package:github_search_app/data/repositories/github_repo_repository_impl.dart'
    as _i604;
import 'package:github_search_app/data/repositories/github_users_repository_impl.dart'
    as _i985;
import 'package:github_search_app/domain/repositories/github_repo_repository_interface.dart'
    as _i673;
import 'package:github_search_app/domain/repositories/github_users_repository_interface.dart'
    as _i922;
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart'
    as _i501;
import 'package:github_search_app/presentation/detail/cubit/detail_cubit.dart'
    as _i834;
import 'package:github_search_app/presentation/results/cubit/results_cubit.dart'
    as _i363;
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart'
    as _i1010;
import 'package:github_search_app/settings/app_module.dart' as _i256;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    gh.factory<_i1010.SearchCubit>(() => _i1010.SearchCubit());
    gh.lazySingleton<_i974.Logger>(() => appModule.logger());
    gh.lazySingleton<_i361.Dio>(() => appModule.dio(gh<_i974.Logger>()));
    gh.lazySingleton<_i792.GithubRepoApiService>(
      () => appModule.githubRepoApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i537.GithubUsersApiService>(
      () => appModule.githubUsersApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i673.IGithubRepoRepository>(
      () => _i604.GithubRepoRepositoryImpl(gh<_i792.GithubRepoApiService>()),
    );
    gh.lazySingleton<_i922.IGithubUsersRepository>(
      () => _i985.GithubUsersRepositoryImpl(gh<_i537.GithubUsersApiService>()),
    );
    gh.factory<_i501.HomeCubit>(
      () => _i501.HomeCubit(
        gh<_i673.IGithubRepoRepository>(),
        gh<_i922.IGithubUsersRepository>(),
      ),
    );
    gh.factory<_i363.ResultsCubit>(
      () => _i363.ResultsCubit(
        gh<_i673.IGithubRepoRepository>(),
        gh<_i922.IGithubUsersRepository>(),
      ),
    );
    gh.factory<_i834.DetailCubit>(
      () => _i834.DetailCubit(gh<_i922.IGithubUsersRepository>()),
    );
    return this;
  }
}

class _$AppModule extends _i256.AppModule {}
