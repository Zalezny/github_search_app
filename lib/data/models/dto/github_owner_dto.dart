import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/github_owner.dart';

part 'github_owner_dto.freezed.dart';
part 'github_owner_dto.g.dart';

@freezed
abstract class GithubOwnerDto with _$GithubOwnerDto {
  const GithubOwnerDto._();

  const factory GithubOwnerDto({
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'html_url') required String htmlUrl,
  }) = _GithubOwnerDto;

  factory GithubOwnerDto.fromJson(Map<String, dynamic> json) => _$GithubOwnerDtoFromJson(json);

  GithubOwner toDomain() {
    return GithubOwner(login: login, avatarUrl: avatarUrl, htmlUrl: htmlUrl);
  }
}
