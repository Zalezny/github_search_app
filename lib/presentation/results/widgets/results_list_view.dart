import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';
import 'package:github_search_app/core/utils/format_utils.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/domain/entities/search_result.dart';
import 'package:github_search_app/presentation/app/app_router.dart';
import 'package:github_search_app/presentation/results/widgets/repo_card.dart';
import 'package:github_search_app/presentation/results/widgets/user_card.dart';
import 'package:github_search_app/presentation/results/widgets/loading_more_indicator.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:go_router/go_router.dart';

class ResultsListView extends StatelessWidget {
  final SearchState state;
  final ScrollController scrollController;

  const ResultsListView({
    super.key,
    required this.state,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount =
        state.results.length +
        (state.isLoadingMore || state.hasMorePages ? 1 : 0);

    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        // Show loading indicator at the bottom
        if (index == state.results.length) {
          if (state.isLoadingMore) {
            return const LoadingMoreIndicator();
          } else if (state.hasMorePages) {
            return const SizedBox(height: AppSpacing.pageBottom);
          } else {
            return const SizedBox.shrink();
          }
        }

        final item = state.results[index];

        // Disable animation for items loaded via pagination (index >= 20)
        final shouldAnimate = index < 20;

        if (!shouldAnimate) {
          return Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.md),
            child: item.map(
              repo: (repoItem) => RepoCard(
                repo: repoItem.repo,
                onTap: () => _openDetail(context, item),
                formatNumber: FormatUtils.formatNumber,
              ),
              user: (userItem) => UserCard(
                user: userItem.user,
                onTap: () => _openDetail(context, item),
              ),
              userDetail: (userDetailItem) => UserCard(
                user: GithubUser(
                  id: userDetailItem.userDetail.id,
                  login: userDetailItem.userDetail.login,
                  avatarUrl: userDetailItem.userDetail.avatarUrl,
                  htmlUrl: userDetailItem.userDetail.htmlUrl,
                  type: 'User',
                ),
                onTap: () => _openDetail(context, item),
              ),
            ),
          );
        }

        return TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: 1),
          duration: Duration(milliseconds: 300 + (index * 50)),
          curve: Curves.easeOut,
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(0, 30 * (1 - value)),
              child: Opacity(opacity: value, child: child),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.md),
            child: item.map(
              repo: (repoItem) => RepoCard(
                repo: repoItem.repo,
                onTap: () => _openDetail(context, item),
                formatNumber: FormatUtils.formatNumber,
              ),
              user: (userItem) => UserCard(
                user: userItem.user,
                onTap: () => _openDetail(context, item),
              ),
              userDetail: (userDetailItem) => UserCard(
                user: GithubUser(
                  id: userDetailItem.userDetail.id,
                  login: userDetailItem.userDetail.login,
                  avatarUrl: userDetailItem.userDetail.avatarUrl,
                  htmlUrl: userDetailItem.userDetail.htmlUrl,
                  type: 'User',
                ),
                onTap: () => _openDetail(context, item),
              ),
            ),
          ),
        );
      },
    );
  }

  void _openDetail(BuildContext context, SearchResultItem item) {
    context.pushNamed(AppRoutes.detail, extra: item);
  }
}
