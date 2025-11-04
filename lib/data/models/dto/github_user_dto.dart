import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/github_user.dart';

part 'github_user_dto.freezed.dart';
part 'github_user_dto.g.dart';

@freezed
abstract class GithubUserDto with _$GithubUserDto {
  const GithubUserDto._();

  const factory GithubUserDto({
    required int id,
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'html_url') required String htmlUrl,
    required String type,
  }) = _GithubUserDto;

  factory GithubUserDto.fromJson(Map<String, dynamic> json) => _$GithubUserDtoFromJson(json);

  GithubUser toDomain() {
    return GithubUser(id: id, login: login, avatarUrl: avatarUrl, htmlUrl: htmlUrl, type: type);
  }
}
