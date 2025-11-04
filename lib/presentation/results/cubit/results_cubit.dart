import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/repositories/github_repo_repository_interface.dart';
import 'package:github_search_app/domain/repositories/github_users_repository_interface.dart';
import 'package:github_search_app/presentation/results/cubit/results_state.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class ResultsCubit extends Cubit<ResultsState> {
  final IGithubRepoRepository _repoRepository;
  final IGithubUsersRepository _usersRepository;

  ResultsCubit(
    this._repoRepository,
    this._usersRepository,
  ) : super(const ResultsState());

  Future<void> search(String query, SearchCategory category) async {
    emit(state.copyWith(
      query: query,
      category: category,
      isLoading: true,
      error: null,
      results: [],
    ));

    if (category == SearchCategory.repos) {
      final result = await _repoRepository.searchRepositories(
        query: query,
        page: 1,
        perPage: 20,
      );

      result.fold(
        (error) {
          emit(state.copyWith(
            error: error,
            isLoading: false,
          ));
        },
        (repos) {
          emit(state.copyWith(
            results: repos,
            isLoading: false,
          ));
        },
      );
    } else {
      final result = await _usersRepository.searchUsers(
        query: query,
        page: 1,
        perPage: 20,
      );

      result.fold(
        (error) {
          emit(state.copyWith(
            error: error,
            isLoading: false,
          ));
        },
        (users) {
          emit(state.copyWith(
            results: users,
            isLoading: false,
          ));
        },
      );
    }
  }

  void retry() {
    search(state.query, state.category);
  }

  void reset() {
    emit(const ResultsState());
  }
}
