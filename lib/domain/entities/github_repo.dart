import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/github_owner.dart';

part 'generated/github_repo.freezed.dart';

@freezed
abstract class GithubRepo with _$GithubRepo {
  const factory GithubRepo({
    required int id,
    required String name,
    required String fullName,
    required String? description,
    required String htmlUrl,
    required int stargazersCount,
    required int forksCount,
    required String language,
    required GithubOwner owner,
    required String? updatedAt,
  }) = _GithubRepo;
}
