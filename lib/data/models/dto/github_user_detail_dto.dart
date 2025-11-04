import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/github_user_detail.dart';

part 'github_user_detail_dto.freezed.dart';
part 'github_user_detail_dto.g.dart';

@freezed
abstract class GithubUserDetailDto with _$GithubUserDetailDto {
  const GithubUserDetailDto._();

  const factory GithubUserDetailDto({
    required int id,
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'html_url') required String htmlUrl,
    required String? name,
    required String? company,
    required String? blog,
    required String? location,
    required String? email,
    required String? bio,
    @JsonKey(name: 'public_repos') required int publicRepos,
    @JsonKey(name: 'public_gists') required int publicGists,
    required int followers,
    required int following,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _GithubUserDetailDto;

  factory GithubUserDetailDto.fromJson(Map<String, dynamic> json) => _$GithubUserDetailDtoFromJson(json);

  GithubUserDetail toDomain() {
    return GithubUserDetail(
      id: id,
      login: login,
      avatarUrl: avatarUrl,
      htmlUrl: htmlUrl,
      name: name,
      company: company,
      blog: blog,
      location: location,
      email: email,
      bio: bio,
      publicRepos: publicRepos,
      publicGists: publicGists,
      followers: followers,
      following: following,
      createdAt: createdAt,
    );
  }
}
