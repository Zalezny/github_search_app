import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class DetailHeader extends StatelessWidget {
  final VoidCallback onBack;
  final Animation<double> animation;

  const DetailHeader({super.key, required this.onBack, required this.animation});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, -0.2),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.card.withValues(alpha: 0.95),
          border: Border(bottom: BorderSide(color: AppTheme.border)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              GestureDetector(
                onTap: onBack,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.arrow_back_ios, color: AppTheme.primary),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Details',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: AppTheme.mutedForeground),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
