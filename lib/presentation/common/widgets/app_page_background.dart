import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

/// Shared full-page background so every screen follows the active app theme.
class AppPageBackground extends StatelessWidget {
  final Widget child;
  final bool useSafeArea;

  const AppPageBackground({
    super.key,
    required this.child,
    this.useSafeArea = true,
  });

  @override
  Widget build(BuildContext context) {
    final content = useSafeArea ? SafeArea(child: child) : child;

    return DecoratedBox(
      decoration: BoxDecoration(gradient: context.appColors.backgroundGradient),
      child: content,
    );
  }
}
