import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/presentation/search/widgets/category_card.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class CategorySelectionSection extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final AnimationController tagsAnimationController;

  const CategorySelectionSection({
    super.key,
    required this.slideAnimation,
    required this.tagsAnimationController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SlideTransition(
          position: slideAnimation,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text('CHOOSE CATEGORY', style: Theme.of(context).textTheme.labelSmall),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CategoryCard(
                        category: SearchCategory.repos,
                        isSelected: state.selectedCategory == SearchCategory.repos,
                        title: 'Repositories',
                        description: 'GitHub repositories',
                        icon: Icons.folder_outlined,
                        gradientColors: const [
                          AppTheme.blueGradientStart,
                          AppTheme.blueGradientEnd,
                        ],
                        onTap: () {
                          context.read<SearchCubit>().selectCategory(SearchCategory.repos);
                          tagsAnimationController.reset();
                          tagsAnimationController.forward();
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CategoryCard(
                        category: SearchCategory.users,
                        isSelected: state.selectedCategory == SearchCategory.users,
                        title: 'Users',
                        description: 'Find developers',
                        icon: Icons.people_outline,
                        gradientColors: const [
                          AppTheme.purpleGradientStart,
                          AppTheme.purpleGradientEnd,
                        ],
                        onTap: () {
                          context.read<SearchCubit>().selectCategory(SearchCategory.users);
                          tagsAnimationController.reset();
                          tagsAnimationController.forward();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
