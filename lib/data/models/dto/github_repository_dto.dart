import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/github_repository.dart';
import 'package:github_search_app/data/models/dto/github_owner_dto.dart';

part 'github_repository_dto.freezed.dart';
part 'github_repository_dto.g.dart';

@freezed
abstract class GithubRepositoryDto with _$GithubRepositoryDto {
  const GithubRepositoryDto._();

  const factory GithubRepositoryDto({
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
  }) = _GithubRepositoryDto;

  factory GithubRepositoryDto.fromJson(Map<String, dynamic> json) => _$GithubRepositoryDtoFromJson(json);

  GithubRepository toDomain() {
    return GithubRepository(
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
