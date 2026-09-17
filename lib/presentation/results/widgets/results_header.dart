import 'package:flutter/material.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';
import 'package:go_router/go_router.dart';

class ResultsHeader extends StatelessWidget {
  final AnimationController animationController;
  final String query;
  final SearchCategory category;

  const ResultsHeader({
    super.key,
    required this.animationController,
    required this.query,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(0, -0.2), end: Offset.zero)
          .animate(
            CurvedAnimation(parent: animationController, curve: Curves.easeOut),
          ),
      child: Container(
        padding: AppSpacing.card,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => context.pop(),
              color: Theme.of(context).colorScheme.onSurface,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Search Results',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    '"$query" • ${category == SearchCategory.repos ? 'Repositories' : 'Users'}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
