import 'package:dio/dio.dart';
import 'package:github_search_app/data/models/dto/github_repository_dto.dart';
import 'package:github_search_app/data/models/dto/github_user_detail_dto.dart';
import 'package:github_search_app/data/models/responses/search_repositories_response.dart';
import 'package:github_search_app/data/models/responses/search_users_response.dart';
import 'package:retrofit/retrofit.dart';

part 'github_api_service.g.dart';

@RestApi()
abstract class GithubApiService {
  factory GithubApiService(Dio dio, {String baseUrl}) = _GithubApiService;

  @GET('/search/repositories')
  Future<SearchRepositoriesResponse> searchRepositories(@Query('q') String query, @Query('page') int page, @Query('per_page') int perPage);

  @GET('/repos/{owner}/{repo}')
  Future<GithubRepositoryDto> getRepositoryDetails(@Path('owner') String owner, @Path('repo') String repo);

  @GET('/search/users')
  Future<SearchUsersResponse> searchUsers(@Query('q') String query, @Query('page') int page, @Query('per_page') int perPage);

  @GET('/users/{username}')
  Future<GithubUserDetailDto> getUserDetails(@Path('username') String username);
}
