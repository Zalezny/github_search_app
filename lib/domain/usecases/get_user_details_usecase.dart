import 'package:dartz/dartz.dart';
import 'package:github_search_app/domain/entities/github_user_detail.dart';
import 'package:github_search_app/domain/repositories/github_users_repository_interface.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserDetailsUseCase {
  final IGithubUsersRepository _repository;

  GetUserDetailsUseCase(this._repository);

  Future<Either<String, GithubUserDetail>> call({required String username}) {
    return _repository.getUserDetails(username: username);
  }
}
