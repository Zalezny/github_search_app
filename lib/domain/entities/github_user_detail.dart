import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/github_user_detail.freezed.dart';

@freezed
abstract class GithubUserDetail with _$GithubUserDetail {
  const factory GithubUserDetail({
    required int id,
    required String login,
    required String avatarUrl,
    required String htmlUrl,
    required String? name,
    required String? company,
    required String? blog,
    required String? location,
    required String? email,
    required String? bio,
    required int publicRepos,
    required int publicGists,
    required int followers,
    required int following,
    required String createdAt,
  }) = _GithubUserDetail;
}
