import 'package:dartz/dartz.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/domain/repositories/github_repo_repository_interface.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchRepositoriesUseCase {
  final IGithubRepoRepository _repository;

  SearchRepositoriesUseCase(this._repository);

  Future<Either<String, List<GithubRepo>>> call({
    required String query,
    required int page,
    required int perPage,
  }) {
    return _repository.searchRepositories(query: query, page: page, perPage: perPage);
  }
}
