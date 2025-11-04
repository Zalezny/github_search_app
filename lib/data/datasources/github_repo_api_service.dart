import 'package:dio/dio.dart';
import 'package:github_search_app/data/models/dto/github_repo_dto.dart';
import 'package:github_search_app/data/models/responses/search_repos_response.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/github_repo_api_service.g.dart';

@RestApi()
abstract class GithubRepoApiService {
  factory GithubRepoApiService(Dio dio, {String baseUrl}) = _GithubRepoApiService;

  @GET('/search/repositories')
  Future<SearchReposResponse> searchRepositories(
    @Query('q') String query,
    @Query('page') int page,
    @Query('per_page') int perPage,
  );

  @GET('/repos/{owner}/{repo}')
  Future<GithubRepoDto> getRepositoryDetails(
    @Path('owner') String owner,
    @Path('repo') String repo,
  );
}
