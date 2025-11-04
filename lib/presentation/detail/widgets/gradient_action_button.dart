import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/presentation/search/search_page.dart';

class GradientActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final SearchCategory category;
  final String text;
  final IconData icon;

  const GradientActionButton({
    super.key,
    required this.onTap,
    required this.category,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: category == SearchCategory.repos
                ? [AppTheme.blueGradientStart, AppTheme.blueGradientEnd]
                : [AppTheme.purpleGradientStart, AppTheme.purpleGradientEnd],
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: AppTheme.primary.withValues(alpha: 0.18), blurRadius: 12)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
