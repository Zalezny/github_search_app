import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(color: AppTheme.primary),
          SizedBox(height: 16),
          Text('Loading...', style: TextStyle(color: AppTheme.mutedForeground, fontSize: 16)),
        ],
      ),
    );
  }
}
