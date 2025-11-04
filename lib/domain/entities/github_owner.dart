import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_owner.freezed.dart';

@freezed
abstract class GithubOwner with _$GithubOwner {
  const factory GithubOwner({
    required String login,
    required String avatarUrl,
    required String htmlUrl,
  }) = _GithubOwner;


}