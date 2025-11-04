import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());

  void selectCategory(SearchCategory category) {
    emit(state.copyWith(selectedCategory: category));
  }

  void updateQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }

void resetSearch() {
    emit(const SearchState());
  }
}
