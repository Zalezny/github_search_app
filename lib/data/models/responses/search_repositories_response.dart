import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/data/models/dto/github_repository_dto.dart';

part 'search_repositories_response.freezed.dart';
part 'search_repositories_response.g.dart';

@freezed
abstract class SearchRepositoriesResponse with _$SearchRepositoriesResponse {
  const factory SearchRepositoriesResponse({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    required List<GithubRepositoryDto> items,
  }) = _SearchRepositoriesResponse;

  factory SearchRepositoriesResponse.fromJson(Map<String, dynamic> json) => _$SearchRepositoriesResponseFromJson(json);
}
