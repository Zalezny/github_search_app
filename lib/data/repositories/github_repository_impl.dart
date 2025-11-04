import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:github_search_app/data/datasources/github_api_service.dart';
import 'package:github_search_app/domain/entities/github_repository.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/repositories/github_repository_interface.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/github_user_detail.dart';

@LazySingleton(as: IGithubRepository)
class GithubRepositoryImpl implements IGithubRepository {
  final GithubApiService _apiService;

  GithubRepositoryImpl(this._apiService);

  @override
  Future<Either<String, List<GithubRepository>>> searchRepositories({required String query, int page = 1, int perPage = 30}) async {
    try {
      final response = await _apiService.searchRepositories(query, page, perPage);

      final repositories = response.items.map((dto) => dto.toDomain()).toList();
      return Right(repositories);
    } on DioException catch (e) {
      return Left(_handleError(e));
    } catch (e) {
      return Left('Unexpected error: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, GithubRepository>> getRepositoryDetails({required String owner, required String repo}) async {
    try {
      final response = await _apiService.getRepositoryDetails(owner, repo);
      return Right(response.toDomain());
    } on DioException catch (e) {
      return Left(_handleError(e));
    } catch (e) {
      return Left('Unexpected error: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, List<GithubUser>>> searchUsers({required String query, int page = 1, int perPage = 30}) async {
    try {
      final response = await _apiService.searchUsers(query, page, perPage);

      final users = response.items.map((dto) => dto.toDomain()).toList();
      return Right(users);
    } on DioException catch (e) {
      return Left(_handleError(e));
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
      return Left(_handleError(e));
    } catch (e) {
      return Left('Unexpected error: ${e.toString()}');
    }
  }

  String _handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 404) {
          return 'Resource not found.';
        } else if (statusCode == 403) {
          return 'API rate limit exceeded. Please try again later.';
        } else if (statusCode == 422) {
          return 'Validation failed. Please check your search query.';
        }
        return 'Server error: ${e.response?.statusMessage ?? 'Unknown error'}';
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.unknown:
        return 'Network error. Please check your internet connection.';
      default:
        return 'An unexpected error occurred.';
    }
  }
}
