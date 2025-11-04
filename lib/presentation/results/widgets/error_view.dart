import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

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
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(errorIcon, size: 80, color: AppTheme.mutedForeground),
            const SizedBox(height: 24),
            Text('Oops!', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 12),
            Text(
              errorMessage,
              style: TextStyle(color: AppTheme.mutedForeground, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}
