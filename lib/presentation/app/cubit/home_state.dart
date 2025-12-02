import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/search_result.dart';

part 'generated/home_state.freezed.dart';

enum AppPage { search, results, detail }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(AppPage.search) AppPage currentPage,
    SearchResultItem? selectedItem,
  }) = _HomeState;
}
