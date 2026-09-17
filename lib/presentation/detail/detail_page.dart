import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/entities/search_result.dart';
import 'package:github_search_app/presentation/common/widgets/app_page_background.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_cubit.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_state.dart';
import 'package:github_search_app/settings/injection.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';
import 'package:github_search_app/presentation/detail/widgets/detail_header.dart';
import 'package:github_search_app/presentation/detail/widgets/repo_detail_content.dart';
import 'package:github_search_app/presentation/detail/widgets/user_detail_content.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatefulWidget {
  final SearchResultItem item;

  const DetailPage({super.key, required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late AnimationController _avatarController;
  late Animation<double> _avatarScale;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: AppDurations.slow,
    );
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero).animate(
          CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
        );
    _animationController.forward();

    _avatarController = AnimationController(
      vsync: this,
      duration: AppDurations.pulse,
    )..repeat(reverse: true);
    _avatarScale = Tween<double>(begin: 1.0, end: 1.04).animate(
      CurvedAnimation(parent: _avatarController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _avatarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailCubit>()..loadItemDetails(widget.item),
      child: Scaffold(
        body: AppPageBackground(
          child: Column(
            children: [
              DetailHeader(
                onBack: () => context.pop(),
                animation: _animationController,
              ),
              Expanded(
                child: BlocBuilder<DetailCubit, DetailState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (state.error != null) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error_outline,
                              size: 64,
                              color: Theme.of(context).colorScheme.error,
                            ),
                            const SizedBox(height: AppSpacing.lg),
                            Text(
                              state.error!,
                              style: TextStyle(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    }

                    return state.item?.map(
                          repo: (repoItem) => RepoDetailContent(
                            repo: repoItem.repo,
                            fadeAnimation: _fadeAnimation,
                            slideAnimation: _slideAnimation,
                            avatarScale: _avatarScale,
                            gradientColors: _heroColors(context),
                          ),
                          user: (userItem) =>
                              const Center(child: CircularProgressIndicator()),
                          userDetail: (userDetailItem) => UserDetailContent(
                            user: userDetailItem.userDetail,
                            fadeAnimation: _fadeAnimation,
                            slideAnimation: _slideAnimation,
                            avatarScale: _avatarScale,
                            gradientColors: _heroColors(context),
                          ),
                        ) ??
                        const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Color> _heroColors(BuildContext context) {
    return widget.item.map(
      repo: (_) => [
        context.appColors.repositoryGradient.colors.first.withValues(
          alpha: 0.18,
        ),
        context.appColors.repositoryGradient.colors.last.withValues(
          alpha: 0.12,
        ),
      ],
      user: (_) => [
        context.appColors.userGradient.colors.first.withValues(alpha: 0.18),
        context.appColors.userGradient.colors.last.withValues(alpha: 0.12),
      ],
      userDetail: (_) => [
        context.appColors.userGradient.colors.first.withValues(alpha: 0.18),
        context.appColors.userGradient.colors.last.withValues(alpha: 0.12),
      ],
    );
  }
}
