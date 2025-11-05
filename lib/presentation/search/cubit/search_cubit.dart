import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/usecases/search_repositories_usecase.dart';
import 'package:github_search_app/domain/usecases/search_users_usecase.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final SearchRepositoriesUseCase _searchRepositoriesUseCase;
  final SearchUsersUseCase _searchUsersUseCase;

  SearchCubit(this._searchRepositoriesUseCase, this._searchUsersUseCase)
    : super(const SearchState());

  void selectCategory(SearchCategory category) {
    emit(state.copyWith(selectedCategory: category));
  }

  void updateQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }

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
          emit(state.copyWith(error: error, isLoading: false, hasMorePages: false));
        },
        (repos) {
          emit(state.copyWith(results: repos, isLoading: false, hasMorePages: repos.length == 20));
        },
      );
    } else {
      final result = await _searchUsersUseCase(query: query, page: 1, perPage: 20);

      result.fold(
        (error) {
          emit(state.copyWith(error: error, isLoading: false, hasMorePages: false));
        },
        (users) {
          emit(state.copyWith(results: users, isLoading: false, hasMorePages: users.length == 20));
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

  void retry() {
    search(state.searchQuery, state.selectedCategory);
  }

  void resetSearch() {
    emit(const SearchState());
  }
}
