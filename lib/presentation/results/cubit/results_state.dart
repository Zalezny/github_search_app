import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';

part 'generated/results_state.freezed.dart';

@freezed
abstract class ResultsState with _$ResultsState {
  const factory ResultsState({
    @Default([]) List<dynamic> results,
    @Default('') String query,
    @Default(SearchCategory.repos) SearchCategory category,
    @Default(false) bool isLoading,
    String? error,
  }) = _ResultsState;
}
