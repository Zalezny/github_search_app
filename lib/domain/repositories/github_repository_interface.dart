import 'package:dartz/dartz.dart';
import 'package:github_search_app/domain/entities/github_repository.dart';
import 'package:github_search_app/domain/entities/github_user.dart';

import '../entities/github_user_detail.dart';

abstract class IGithubRepository {
  Future<Either<String, List<GithubRepository>>> searchRepositories({required String query, int page = 1, int perPage = 30});

  Future<Either<String, GithubRepository>> getRepositoryDetails({required String owner, required String repo});

  Future<Either<String, List<GithubUser>>> searchUsers({required String query, int page = 1, int perPage = 30});

  Future<Either<String, GithubUserDetail>> getUserDetails({required String username});
}
