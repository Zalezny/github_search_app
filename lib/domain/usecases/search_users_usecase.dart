import 'package:dartz/dartz.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/repositories/github_users_repository_interface.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchUsersUseCase {
  final IGithubUsersRepository _repository;

  SearchUsersUseCase(this._repository);

  Future<Either<String, List<GithubUser>>> call({
    required String query,
    required int page,
    required int perPage,
  }) {
    return _repository.searchUsers(query: query, page: page, perPage: perPage);
  }
}
