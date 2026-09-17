import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';

class GradientActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isRepoType;
  final String text;
  final IconData icon;

  const GradientActionButton({
    super.key,
    required this.onTap,
    required this.isRepoType,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
        decoration: BoxDecoration(
          gradient: isRepoType
              ? context.appColors.repositoryGradient
              : context.appColors.userGradient,
          borderRadius: AppRadii.medium,
          boxShadow: [
            BoxShadow(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.18),
              blurRadius: AppRadii.md,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: context.appColors.onGradient),
            const SizedBox(width: AppSpacing.sm),
            Text(
              text,
              style: TextStyle(
                color: context.appColors.onGradient,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
