import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/data/models/dto/github_repo_dto.dart';

part 'generated/search_repos_response.freezed.dart';
part 'generated/search_repos_response.g.dart';

@freezed
abstract class SearchReposResponse with _$SearchReposResponse {
  const factory SearchReposResponse({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    required List<GithubRepoDto> items,
  }) = _SearchReposResponse;

  factory SearchReposResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchReposResponseFromJson(json);
}
