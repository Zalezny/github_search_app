import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoCard({super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 64) / 2,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, size: 18, color: AppTheme.primary),
                  const SizedBox(width: 8),
                  Text(label, style: TextStyle(color: AppTheme.mutedForeground, fontSize: 12)),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.foreground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
