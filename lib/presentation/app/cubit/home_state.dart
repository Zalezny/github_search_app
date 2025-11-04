import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/presentation/search/search_page.dart';

part 'generated/home_state.freezed.dart';

enum AppPage { search, results, detail }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(AppPage.search) AppPage currentPage,
    @Default('') String searchQuery,
    @Default(SearchCategory.repos) SearchCategory selectedCategory,
    @Default([]) List<dynamic> results,
    dynamic selectedItem,
    @Default(false) bool isLoading,
    String? error,
  }) = _HomeState;
}
