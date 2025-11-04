import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search_off, size: 80, color: AppTheme.mutedForeground),
            const SizedBox(height: 24),
            Text('No Results Found', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 12),
            Text(
              'Try adjusting your search or filters to find what you\'re looking for.',
              style: TextStyle(color: AppTheme.mutedForeground, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
