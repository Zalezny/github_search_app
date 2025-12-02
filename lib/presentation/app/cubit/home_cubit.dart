import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/entities/search_result.dart';
import 'package:github_search_app/presentation/app/cubit/home_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void selectResult(SearchResultItem item) {
    emit(state.copyWith(selectedItem: item, currentPage: AppPage.detail));
  }

  void backToSearch() {
    emit(state.copyWith(currentPage: AppPage.search));
  }

  void backToResults() {
    emit(state.copyWith(currentPage: AppPage.results));
  }

  void navigateToResults() {
    emit(state.copyWith(currentPage: AppPage.results));
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
