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
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class RepoDetailContent extends StatelessWidget {
  final GithubRepo repo;
  final Animation<double> fadeAnimation;
  final Animation<Offset> slideAnimation;
  final Animation<double> avatarScale;
  final List<Color> gradientColors;
  final SearchCategory category;

  const RepoDetailContent({
    super.key,
    required this.repo,
    required this.fadeAnimation,
    required this.slideAnimation,
    required this.avatarScale,
    required this.gradientColors,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: SlideTransition(
        position: slideAnimation,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
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
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      repo.fullName,
                      style: TextStyle(color: AppTheme.primary, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      repo.description ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: AppTheme.mutedForeground),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

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
                  InfoCard(icon: Icons.code, label: 'Language', value: repo.language),
                  InfoCard(icon: Icons.person, label: 'Owner', value: repo.owner.login),
                ],
              ),
              const SizedBox(height: 16),

              // Description
              if (repo.description != null)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.description_outlined, size: 20, color: AppTheme.primary),
                            const SizedBox(width: 8),
                            Text(
                              'About',
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          repo.description!,
                          style: TextStyle(
                            color: AppTheme.mutedForeground,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(height: 16),

              // Last updated
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.update, color: AppTheme.mutedForeground),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Last Updated',
                              style: TextStyle(color: AppTheme.mutedForeground, fontSize: 13),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              app_date_utils.DateUtils.formatDate(repo.updatedAt ?? ''),
                              style: const TextStyle(
                                color: AppTheme.foreground,
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
              const SizedBox(height: 20),

              // Action
              GradientActionButton(
                onTap: () async {
                  final cubit = context.read<DetailCubit>();
                  final success = await cubit.openUrl(repo.htmlUrl);

                  if (!success && context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Unable to open GitHub URL'),
                        backgroundColor: Colors.red,
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 3),
                      ),
                    );
                  }
                },
                category: category,
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
