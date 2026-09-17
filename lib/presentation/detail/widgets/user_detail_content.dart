import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/core/utils/format_utils.dart';
import 'package:github_search_app/domain/entities/github_user_detail.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_cubit.dart';
import 'package:github_search_app/presentation/detail/widgets/gradient_action_button.dart';
import 'package:github_search_app/presentation/detail/widgets/hero_section.dart';
import 'package:github_search_app/presentation/detail/widgets/info_card.dart';
import 'package:github_search_app/presentation/detail/widgets/info_card_row.dart';
import 'package:github_search_app/presentation/detail/widgets/stats_grid.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';

class UserDetailContent extends StatelessWidget {
  final GithubUserDetail user;
  final Animation<double> fadeAnimation;
  final Animation<Offset> slideAnimation;
  final Animation<double> avatarScale;
  final List<Color> gradientColors;

  const UserDetailContent({
    super.key,
    required this.user,
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
                avatarUrl: user.avatarUrl,
                tag: 'avatar_${user.id}',
                avatarScale: avatarScale,
                gradientColors: gradientColors,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name ?? user.login,
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium?.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      '@${user.login}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                    if (user.bio != null) ...[
                      const SizedBox(height: AppSpacing.sm),
                      Text(
                        user.bio!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),

              // Stats grid
              StatsGrid(
                children: [
                  InfoCard(
                    icon: Icons.people,
                    label: 'Followers',
                    value: FormatUtils.formatNumber(user.followers),
                  ),
                  InfoCard(
                    icon: Icons.person_add,
                    label: 'Following',
                    value: FormatUtils.formatNumber(user.following),
                  ),
                  InfoCard(
                    icon: Icons.folder,
                    label: 'Public Repos',
                    value: user.publicRepos.toString(),
                  ),
                  InfoCard(
                    icon: Icons.code,
                    label: 'Public Gists',
                    value: user.publicGists.toString(),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.lg),

              // Info rows
              if (user.location != null)
                InfoCardRow(
                  icon: Icons.location_on,
                  label: 'Location',
                  value: user.location!,
                ),
              if (user.company != null) ...[
                const SizedBox(height: AppSpacing.md),
                InfoCardRow(
                  icon: Icons.business,
                  label: 'Company',
                  value: user.company!,
                ),
              ],
              if (user.email != null) ...[
                const SizedBox(height: AppSpacing.md),
                InfoCardRow(
                  icon: Icons.email,
                  label: 'Email',
                  value: user.email!,
                ),
              ],
              if (user.blog != null && user.blog!.isNotEmpty) ...[
                const SizedBox(height: AppSpacing.md),
                InfoCardRow(icon: Icons.link, label: 'Blog', value: user.blog!),
              ],

              const SizedBox(height: AppSpacing.xl),
              GradientActionButton(
                onTap: () async {
                  final cubit = context.read<DetailCubit>();
                  final success = await cubit.openUrl(user.htmlUrl);

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
                isRepoType: false,
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
