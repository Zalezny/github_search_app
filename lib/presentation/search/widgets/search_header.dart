import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class SearchHeader extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> fadeAnimation;

  const SearchHeader({
    super.key,
    required this.slideAnimation,
    required this.fadeAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: FadeTransition(
        opacity: fadeAnimation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppTheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'DISCOVER & EXPLORE',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: AppTheme.primary, fontSize: 11),
                ),
              ),
              const SizedBox(height: 12),
              Text('GitHub Search', style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 12),
              Text(
                'Discover repositories and developers from the GitHub ecosystem',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
