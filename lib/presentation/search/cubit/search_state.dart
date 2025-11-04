import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/search_state.freezed.dart';

enum SearchCategory { repos, users }

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchCategory.repos) SearchCategory selectedCategory,
    @Default('') String searchQuery,
  }) = _SearchState;
}
