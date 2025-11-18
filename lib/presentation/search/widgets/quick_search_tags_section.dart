import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/presentation/search/widgets/quick_search_tag.dart';

class QuickSearchTagsSection extends StatelessWidget {
  final List<String> repoQuickSearchTags;
  final List<String> userQuickSearchTags;
  final void Function(String tag) onTagTap;

  const QuickSearchTagsSection({
    super.key,
    required this.repoQuickSearchTags,
    required this.userQuickSearchTags,
    required this.onTagTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final tags = state.selectedCategory == SearchCategory.repos
            ? repoQuickSearchTags
            : userQuickSearchTags;

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeInOut,
          switchOutCurve: Curves.easeInOut,
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.1),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            );
          },
          child: Container(
            key: ValueKey(state.selectedCategory),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('QUICK SEARCH', style: Theme.of(context).textTheme.labelSmall),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: tags.asMap().entries.map((entry) {
                    return TweenAnimationBuilder<double>(
                      key: ValueKey('${state.selectedCategory}_${entry.value}'),
                      tween: Tween(begin: 0, end: 1),
                      duration: Duration(milliseconds: 300 + (entry.key * 40)),
                      curve: Curves.easeOut,
                      builder: (context, value, child) {
                        return Transform.translate(
                          offset: Offset(0, 10 * (1 - value)),
                          child: Opacity(opacity: value, child: child),
                        );
                      },
                      child: QuickSearchTag(tag: entry.value, onTap: () => onTagTap(entry.value)),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
