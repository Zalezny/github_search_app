import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/repositories/github_users_repository_interface.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetailCubit extends Cubit<DetailState> {
  final IGithubUsersRepository _usersRepository;

  DetailCubit(this._usersRepository) : super(const DetailState());

  void setItem(dynamic item) {
    emit(state.copyWith(item: item));
  }

  Future<void> loadUserDetails(String username) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await _usersRepository.getUserDetails(username: username);

    result.fold(
      (error) {
        emit(state.copyWith(error: error, isLoading: false));
      },
      (userDetail) {
        emit(state.copyWith(item: userDetail, isLoading: false));
      },
    );
  }

  Future<void> loadItemDetails(dynamic item) async {
    if (item is GithubUser) {
      await loadUserDetails(item.login);
    } else {
      setItem(item);
    }
  }

  void reset() {
    emit(const DetailState());
  }
}
