import 'package:flutter/material.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';
import 'package:github_search_app/presentation/results/widgets/stat_chip.dart';

class RepoCard extends StatelessWidget {
  final GithubRepo repo;
  final VoidCallback onTap;
  final String Function(int) formatNumber;

  const RepoCard({
    super.key,
    required this.repo,
    required this.onTap,
    required this.formatNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: AppRadii.large,
        side: BorderSide(color: Theme.of(context).colorScheme.outline),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.large,
        child: Padding(
          padding: AppSpacing.card,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Hero(
                    tag: 'avatar_${repo.id}',
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(repo.owner.avatarUrl),
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          repo.fullName,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: AppSpacing.xxs),
                        Text(
                          repo.language,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    size: 18,
                  ),
                ],
              ),
              if (repo.description != null) ...[
                const SizedBox(height: AppSpacing.md),
                Text(
                  repo.description!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              const SizedBox(height: AppSpacing.md),
              Row(
                children: [
                  StatChip(
                    icon: Icons.star_border,
                    value: formatNumber(repo.stargazersCount),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  StatChip(
                    icon: Icons.fork_right,
                    value: formatNumber(repo.forksCount),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
