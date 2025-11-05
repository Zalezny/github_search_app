import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/core/utils/format_utils.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/settings/theme/app_colors.dart';
import 'package:github_search_app/presentation/results/widgets/loading_view.dart';
import 'package:github_search_app/presentation/results/widgets/error_view.dart';
import 'package:github_search_app/presentation/results/widgets/empty_view.dart';
import 'package:github_search_app/presentation/results/widgets/repo_card.dart';
import 'package:github_search_app/presentation/results/widgets/user_card.dart';
import 'package:github_search_app/presentation/results/widgets/results_header.dart';

class ResultsListPage extends StatefulWidget {
  const ResultsListPage({super.key});

  @override
  State<ResultsListPage> createState() => _ResultsListPageState();
}

class _ResultsListPageState extends State<ResultsListPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: AppTheme.slowAnimation);
    _animationController.forward();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.7) {
      context.read<SearchCubit>().loadMoreResults();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
            child: SafeArea(
              child: Column(
                children: [
                  ResultsHeader(
                    animationController: _animationController,
                    query: state.searchQuery,
                    category: state.selectedCategory,
                  ),
                  if (state.isLoading)
                    const Expanded(child: LoadingView())
                  else if (state.error != null)
                    Expanded(
                      child: ErrorView(
                        error: state.error!,
                        onRetry: () => context.read<SearchCubit>().retry(),
                      ),
                    )
                  else if (state.results.isEmpty)
                    const Expanded(child: EmptyView())
                  else
                    Expanded(child: _buildResultsList(state)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildResultsList(SearchState state) {
    final itemCount = state.results.length + (state.isLoadingMore || state.hasMorePages ? 1 : 0);

    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        // Show loading indicator at the bottom
        if (index == state.results.length) {
          if (state.isLoadingMore) {
            return _buildLoadingMoreIndicator();
          } else if (state.hasMorePages) {
            return const SizedBox(height: 80);
          } else {
            return const SizedBox.shrink();
          }
        }

        final item = state.results[index];

        // Disable animation for items loaded via pagination (index >= 20)
        final shouldAnimate = index < 20;

        if (!shouldAnimate) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: state.selectedCategory == SearchCategory.repos
                ? RepoCard(
                    repo: item as GithubRepo,
                    onTap: () {
                      context.read<HomeCubit>().selectResult(item);
                    },
                    formatNumber: FormatUtils.formatNumber,
                  )
                : UserCard(
                    user: item as GithubUser,
                    onTap: () {
                      context.read<HomeCubit>().selectResult(item);
                    },
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
            padding: const EdgeInsets.only(bottom: 12),
            child: state.selectedCategory == SearchCategory.repos
                ? RepoCard(
                    repo: item as GithubRepo,
                    onTap: () {
                      context.read<HomeCubit>().selectResult(item);
                    },
                    formatNumber: FormatUtils.formatNumber,
                  )
                : UserCard(
                    user: item as GithubUser,
                    onTap: () {
                      context.read<HomeCubit>().selectResult(item);
                    },
                  ),
          ),
        );
      },
    );
  }

  Widget _buildLoadingMoreIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primary),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Loading new elements...',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: AppTheme.mutedForeground),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
