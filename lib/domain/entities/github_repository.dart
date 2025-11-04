import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/github_owner.dart';

part 'github_repository.freezed.dart';

@freezed
abstract class GithubRepository with _$GithubRepository {
  const factory GithubRepository({
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
  }) = _GithubRepository;
}
