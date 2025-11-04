import 'package:flutter/material.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/presentation/results/widgets/stat_chip.dart';

class RepoCard extends StatelessWidget {
  final GithubRepo repo;
  final VoidCallback onTap;
  final String Function(int) formatNumber;

  const RepoCard({super.key, required this.repo, required this.onTap, required this.formatNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppTheme.border, width: 1),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 20, backgroundImage: NetworkImage(repo.owner.avatarUrl)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          repo.fullName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.foreground,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          repo.language,
                          style: TextStyle(fontSize: 12, color: AppTheme.mutedForeground),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, color: AppTheme.mutedForeground, size: 18),
                ],
              ),
              if (repo.description != null) ...[
                const SizedBox(height: 12),
                Text(
                  repo.description!,
                  style: TextStyle(fontSize: 14, color: AppTheme.mutedForeground),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
              const SizedBox(height: 12),
              Row(
                children: [
                  StatChip(icon: Icons.star_border, value: formatNumber(repo.stargazersCount)),
                  const SizedBox(width: 12),
                  StatChip(icon: Icons.fork_right, value: formatNumber(repo.forksCount)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
