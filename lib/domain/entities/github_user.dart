import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_user.freezed.dart';

@freezed
abstract class GithubUser with _$GithubUser {
  const factory GithubUser({required int id, required String login, required String avatarUrl, required String htmlUrl, required String type}) =
      _GithubUser;
}
