import 'package:dartz/dartz.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';

abstract class IGithubRepoRepository {
  Future<Either<String, List<GithubRepo>>> searchRepositories({
    required String query,
    int page = 1,
    int perPage = 30,
  });

  Future<Either<String, GithubRepo>> getRepositoryDetails({
    required String owner,
    required String repo,
  });
}
