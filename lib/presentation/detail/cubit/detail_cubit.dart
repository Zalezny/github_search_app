import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/entities/search_result.dart';
import 'package:github_search_app/domain/usecases/get_user_details_usecase.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_state.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@injectable
class DetailCubit extends Cubit<DetailState> {
  final GetUserDetailsUseCase _getUserDetailsUseCase;

  DetailCubit(this._getUserDetailsUseCase) : super(const DetailState());

  void setItem(SearchResultItem item) {
    emit(state.copyWith(item: item));
  }

  Future<void> loadUserDetails(String username) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await _getUserDetailsUseCase(username: username);

    result.fold(
      (error) {
        emit(state.copyWith(error: error, isLoading: false));
      },
      (userDetail) {
        emit(state.copyWith(item: SearchResultItem.userDetail(userDetail), isLoading: false));
      },
    );
  }

  Future<void> loadItemDetails(SearchResultItem item) async {
    await item.map(
      repo: (repoItem) async {
        setItem(item);
      },
      user: (userItem) async {
        await loadUserDetails(userItem.user.login);
      },
      userDetail: (userDetailItem) async {
        setItem(item);
      },
    );
  }

  void reset() {
    emit(const DetailState());
  }

  Future<bool> openUrl(String url) async {
    try {
      final uri = Uri.parse(url);
      if (!(await launchUrl(uri, mode: LaunchMode.inAppBrowserView))) {
        return false;
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}
