import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_search_app/core/utils/dio_error_handler.dart';
import 'package:github_search_app/data/datasources/github_users_api_service.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/entities/github_user_detail.dart';
import 'package:github_search_app/domain/repositories/github_users_repository_interface.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGithubUsersRepository)
class GithubUsersRepositoryImpl implements IGithubUsersRepository {
  final GithubUsersApiService _apiService;

  GithubUsersRepositoryImpl(this._apiService);

  @override
  Future<Either<String, List<GithubUser>>> searchUsers({
    required String query,
    int page = 1,
    int perPage = 30,
  }) async {
    try {
      final response = await _apiService.searchUsers(query, page, perPage);

      final users = response.items.map((dto) => dto.toDomain()).toList();
      return Right(users);
    } on DioException catch (e) {
      return Left(DioErrorHandler.handleError(e));
    } catch (e) {
      return Left('Unexpected error: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, GithubUserDetail>> getUserDetails({required String username}) async {
    try {
      final response = await _apiService.getUserDetails(username);
      return Right(response.toDomain());
    } on DioException catch (e) {
      return Left(DioErrorHandler.handleError(e));
    } catch (e) {
      return Left('Unexpected error: ${e.toString()}');
    }
  }
}
