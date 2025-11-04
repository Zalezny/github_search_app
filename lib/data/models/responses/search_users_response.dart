import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/data/models/dto/github_user_dto.dart';

part 'generated/search_users_response.freezed.dart';
part 'generated/search_users_response.g.dart';

@freezed
abstract class SearchUsersResponse with _$SearchUsersResponse {
  const factory SearchUsersResponse({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    required List<GithubUserDto> items,
  }) = _SearchUsersResponse;

  factory SearchUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchUsersResponseFromJson(json);
}
