import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/repositories/github_repo_repository_interface.dart';
import 'package:github_search_app/domain/repositories/github_users_repository_interface.dart';
import 'package:github_search_app/presentation/app/cubit/home_state.dart';
import 'package:github_search_app/presentation/search/search_page.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final IGithubRepoRepository _repoRepository;
  final IGithubUsersRepository _usersRepository;

  HomeCubit(this._repoRepository, this._usersRepository) : super(const HomeState());

  Future<void> search(String query, SearchCategory category) async {
    emit(
      state.copyWith(
        searchQuery: query,
        selectedCategory: category,
        isLoading: true,
        error: null,
        results: [],
      ),
    );

    if (category == SearchCategory.repos) {
      final result = await _repoRepository.searchRepositories(query: query, page: 1, perPage: 20);

      result.fold(
        (error) {
          emit(state.copyWith(error: error, isLoading: false, currentPage: AppPage.results));
        },
        (repos) {
          emit(state.copyWith(results: repos, isLoading: false, currentPage: AppPage.results));
        },
      );
    } else {
      final result = await _usersRepository.searchUsers(query: query, page: 1, perPage: 20);

      result.fold(
        (error) {
          emit(state.copyWith(error: error, isLoading: false, currentPage: AppPage.results));
        },
        (users) {
          emit(state.copyWith(results: users, isLoading: false, currentPage: AppPage.results));
        },
      );
    }
  }

  Future<String?> selectResult(dynamic item) async {
    if (item is GithubUser) {
      emit(state.copyWith(isLoading: true));

      final result = await _usersRepository.getUserDetails(username: item.login);

      return result.fold(
        (error) {
          emit(state.copyWith(error: error, isLoading: false));
          return error; // Return error message to show in snackbar
        },
        (userDetail) {
          emit(
            state.copyWith(selectedItem: userDetail, isLoading: false, currentPage: AppPage.detail),
          );
          return null; // No error
        },
      );
    } else {
      // It's a repo
      emit(state.copyWith(selectedItem: item, currentPage: AppPage.detail));
      return null; // No error
    }
  }

  void backToSearch() {
    emit(state.copyWith(currentPage: AppPage.search, results: [], error: null, searchQuery: ''));
  }

  void backToResults() {
    emit(state.copyWith(currentPage: AppPage.results));
  }

  void retry() {
    search(state.searchQuery, state.selectedCategory);
  }

  bool canPop() {
    return state.currentPage == AppPage.search;
  }

  void handleBackNavigation() {
    if (state.currentPage == AppPage.detail) {
      backToResults();
    } else if (state.currentPage == AppPage.results) {
      backToSearch();
    }
  }
}
