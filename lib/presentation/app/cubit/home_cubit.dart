import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/usecases/search_repositories_usecase.dart';
import 'package:github_search_app/domain/usecases/search_users_usecase.dart';
import 'package:github_search_app/presentation/app/cubit/home_state.dart';
import 'package:github_search_app/presentation/search/search_page.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final SearchRepositoriesUseCase _searchRepositoriesUseCase;
  final SearchUsersUseCase _searchUsersUseCase;

  HomeCubit(this._searchRepositoriesUseCase, this._searchUsersUseCase) : super(const HomeState());

  Future<void> search(String query, SearchCategory category) async {
    emit(
      state.copyWith(
        searchQuery: query,
        selectedCategory: category,
        isLoading: true,
        error: null,
        results: [],
        pageNumber: 1,
        hasMorePages: true,
      ),
    );

    if (category == SearchCategory.repos) {
      final result = await _searchRepositoriesUseCase(query: query, page: 1, perPage: 20);

      result.fold(
        (error) {
          emit(
            state.copyWith(
              error: error,
              isLoading: false,
              currentPage: AppPage.results,
              hasMorePages: false,
            ),
          );
        },
        (repos) {
          emit(
            state.copyWith(
              results: repos,
              isLoading: false,
              currentPage: AppPage.results,
              hasMorePages: repos.length == 20,
            ),
          );
        },
      );
    } else {
      final result = await _searchUsersUseCase(query: query, page: 1, perPage: 20);

      result.fold(
        (error) {
          emit(
            state.copyWith(
              error: error,
              isLoading: false,
              currentPage: AppPage.results,
              hasMorePages: false,
            ),
          );
        },
        (users) {
          emit(
            state.copyWith(
              results: users,
              isLoading: false,
              currentPage: AppPage.results,
              hasMorePages: users.length == 20,
            ),
          );
        },
      );
    }
  }

  Future<void> loadMoreResults() async {
    if (state.isLoadingMore || !state.hasMorePages) return;

    emit(state.copyWith(isLoadingMore: true));

    final nextPage = state.pageNumber + 1;

    if (state.selectedCategory == SearchCategory.repos) {
      final result = await _searchRepositoriesUseCase(
        query: state.searchQuery,
        page: nextPage,
        perPage: 20,
      );

      result.fold(
        (error) {
          emit(state.copyWith(isLoadingMore: false, error: error));
        },
        (repos) {
          final updatedResults = List<dynamic>.from(state.results)..addAll(repos);
          emit(
            state.copyWith(
              results: updatedResults,
              isLoadingMore: false,
              pageNumber: nextPage,
              hasMorePages: repos.length == 20,
            ),
          );
        },
      );
    } else {
      final result = await _searchUsersUseCase(
        query: state.searchQuery,
        page: nextPage,
        perPage: 20,
      );

      result.fold(
        (error) {
          emit(state.copyWith(isLoadingMore: false, error: error));
        },
        (users) {
          final updatedResults = List<dynamic>.from(state.results)..addAll(users);
          emit(
            state.copyWith(
              results: updatedResults,
              isLoadingMore: false,
              pageNumber: nextPage,
              hasMorePages: users.length == 20,
            ),
          );
        },
      );
    }
  }

  void selectResult(dynamic item) {
    emit(state.copyWith(selectedItem: item, currentPage: AppPage.detail));
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
