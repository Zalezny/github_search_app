import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/core/utils/date_utils.dart' as app_date_utils;
import 'package:github_search_app/core/utils/format_utils.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_cubit.dart';
import 'package:github_search_app/presentation/detail/widgets/gradient_action_button.dart';
import 'package:github_search_app/presentation/detail/widgets/hero_section.dart';
import 'package:github_search_app/presentation/detail/widgets/info_card.dart';
import 'package:github_search_app/presentation/detail/widgets/stats_grid.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';

class RepoDetailContent extends StatelessWidget {
  final GithubRepo repo;
  final Animation<double> fadeAnimation;
  final Animation<Offset> slideAnimation;
  final Animation<double> avatarScale;
  final List<Color> gradientColors;

  const RepoDetailContent({
    super.key,
    required this.repo,
    required this.fadeAnimation,
    required this.slideAnimation,
    required this.avatarScale,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: SlideTransition(
        position: slideAnimation,
        child: SingleChildScrollView(
          padding: AppSpacing.page,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero
              HeroSection(
                avatarUrl: repo.owner.avatarUrl,
                tag: 'avatar_${repo.id}',
                avatarScale: avatarScale,
                gradientColors: gradientColors,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repo.name,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium?.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      repo.fullName,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.sm),
                    Text(
                      repo.description ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              // Stats grid
              StatsGrid(
                children: [
                  InfoCard(
                    icon: Icons.star,
                    label: 'Stars',
                    value: FormatUtils.formatNumber(repo.stargazersCount),
                  ),
                  InfoCard(
                    icon: Icons.fork_right,
                    label: 'Forks',
                    value: FormatUtils.formatNumber(repo.forksCount),
                  ),
                  InfoCard(
                    icon: Icons.code,
                    label: 'Language',
                    value: repo.language,
                  ),
                  InfoCard(
                    icon: Icons.person,
                    label: 'Owner',
                    value: repo.owner.login,
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),

              // Description
              if (repo.description != null)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSpacing.xl),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.description_outlined,
                              size: 20,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            const SizedBox(width: AppSpacing.sm),
                            Text(
                              'About',
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSpacing.md),
                        Text(
                          repo.description!,
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: AppSpacing.lg),

              // Last updated
              Card(
                child: Padding(
                  padding: AppSpacing.card,
                  child: Row(
                    children: [
                      Icon(
                        Icons.update,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Last Updated',
                              style: TextStyle(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              app_date_utils.DateUtils.formatDate(
                                repo.updatedAt ?? '',
                              ),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),

              // Action
              GradientActionButton(
                onTap: () async {
                  final cubit = context.read<DetailCubit>();
                  final success = await cubit.openUrl(repo.htmlUrl);

                  if (!success && context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Unable to open GitHub URL'),
                        duration: Duration(seconds: 3),
                        backgroundColor: Theme.of(context).colorScheme.error,
                      ),
                    );
                  }
                },
                isRepoType: true,
                text: 'View on GitHub',
                icon: Icons.open_in_new,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
