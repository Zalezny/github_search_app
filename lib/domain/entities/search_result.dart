import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/entities/github_user_detail.dart';

part 'generated/search_result.freezed.dart';

@freezed
sealed class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem.repo(GithubRepo repo) = SearchResultRepo;
  const factory SearchResultItem.user(GithubUser user) = SearchResultUser;
  const factory SearchResultItem.userDetail(GithubUserDetail userDetail) = SearchResultUserDetail;
}
