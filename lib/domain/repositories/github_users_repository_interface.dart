import 'package:dartz/dartz.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/entities/github_user_detail.dart';

abstract class IGithubUsersRepository {
  Future<Either<String, List<GithubUser>>> searchUsers({
    required String query,
    int page = 1,
    int perPage = 30,
  });

  Future<Either<String, GithubUserDetail>> getUserDetails({required String username});
}
