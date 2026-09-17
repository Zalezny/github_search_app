import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';

class StatsGrid extends StatelessWidget {
  final List<Widget> children;

  const StatsGrid({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: AppSpacing.md,
        runSpacing: AppSpacing.md,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: children,
      ),
    );
  }
}
