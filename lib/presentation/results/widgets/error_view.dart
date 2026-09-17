import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';

class ErrorView extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;

  const ErrorView({super.key, required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    String errorMessage;
    IconData errorIcon;

    switch (error) {
      case 'network':
        errorMessage = 'Network error. Please check your connection.';
        errorIcon = Icons.wifi_off;
        break;
      case 'server':
        errorMessage = 'Server error. Please try again later.';
        errorIcon = Icons.error_outline;
        break;
      default:
        errorMessage = error;
        errorIcon = Icons.warning_amber;
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xxxl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              errorIcon,
              size: 80,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: AppSpacing.xxl),
            Text('Oops!', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: AppSpacing.md),
            Text(
              errorMessage,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.xxxl),
            ElevatedButton(onPressed: onRetry, child: const Text('Try Again')),
          ],
        ),
      ),
    );
  }
}
