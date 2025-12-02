import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/search_result.dart';

part 'generated/search_state.freezed.dart';

enum SearchCategory { repos, users }

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchCategory.repos) SearchCategory selectedCategory,
    @Default('') String searchQuery,
    @Default([]) List<SearchResultItem> results,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(1) int pageNumber,
    @Default(true) bool hasMorePages,
    String? error,
  }) = _SearchState;
}
