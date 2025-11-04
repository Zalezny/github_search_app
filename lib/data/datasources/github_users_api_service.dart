import 'package:dio/dio.dart';
import 'package:github_search_app/data/models/dto/github_user_detail_dto.dart';
import 'package:github_search_app/data/models/responses/search_users_response.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/github_users_api_service.g.dart';

@RestApi()
abstract class GithubUsersApiService {
  factory GithubUsersApiService(Dio dio, {String baseUrl}) = _GithubUsersApiService;

  @GET('/search/users')
  Future<SearchUsersResponse> searchUsers(
    @Query('q') String query,
    @Query('page') int page,
    @Query('per_page') int perPage,
  );

  @GET('/users/{username}')
  Future<GithubUserDetailDto> getUserDetails(@Path('username') String username);
}
