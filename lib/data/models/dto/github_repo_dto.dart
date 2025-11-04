import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/data/models/dto/github_owner_dto.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';

part 'generated/github_repo_dto.freezed.dart';
part 'generated/github_repo_dto.g.dart';

@freezed
abstract class GithubRepoDto with _$GithubRepoDto {
  const GithubRepoDto._();

  const factory GithubRepoDto({
    required int id,
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required String? description,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @JsonKey(name: 'stargazers_count') required int stargazersCount,
    @JsonKey(name: 'forks_count') required int forksCount,
    required String? language,
    required GithubOwnerDto owner,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _GithubRepoDto;

  factory GithubRepoDto.fromJson(Map<String, dynamic> json) => _$GithubRepoDtoFromJson(json);

  GithubRepo toDomain() {
    return GithubRepo(
      id: id,
      name: name,
      fullName: fullName,
      description: description,
      htmlUrl: htmlUrl,
      stargazersCount: stargazersCount,
      forksCount: forksCount,
      language: language ?? 'Unknown',
      owner: owner.toDomain(),
      updatedAt: updatedAt,
    );
  }
}
