import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class HeroSection extends StatelessWidget {
  final String avatarUrl;
  final String tag;
  final Animation<double> avatarScale;
  final List<Color> gradientColors;
  final Widget content;

  const HeroSection({
    super.key,
    required this.avatarUrl,
    required this.tag,
    required this.avatarScale,
    required this.gradientColors,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        border: Border.all(color: AppTheme.primary.withValues(alpha: 0.12)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Hero(
            tag: tag,
            child: ScaleTransition(
              scale: avatarScale,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppTheme.primary.withValues(alpha: 0.18), width: 2),
                ),
                child: CircleAvatar(radius: 40, backgroundImage: NetworkImage(avatarUrl)),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(child: content),
        ],
      ),
    );
  }
}
