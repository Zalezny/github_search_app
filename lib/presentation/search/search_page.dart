import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/presentation/search/widgets/animated_search_field.dart';
import 'package:github_search_app/presentation/search/widgets/category_card.dart';
import 'package:github_search_app/presentation/search/widgets/quick_search_tag.dart';
import 'package:github_search_app/presentation/search/widgets/search_header.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/settings/theme/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  late AnimationController _headerAnimationController;
  late AnimationController _searchBarAnimationController;
  late AnimationController _categoryAnimationController;
  late AnimationController _tagsAnimationController;

  late Animation<Offset> _headerSlideAnimation;
  late Animation<double> _headerFadeAnimation;
  late Animation<Offset> _searchBarSlideAnimation;
  late Animation<Offset> _categorySlideAnimation;

  // Quick search tags for repositories
  final List<String> _repoQuickSearchTags = ['Flutter', 'AI', 'Next.js', 'React', 'TypeScript'];

  // Quick search tags for users (top GitHub accounts)
  final List<String> _userQuickSearchTags = [
    'Zalezny',
    'torvalds',
    'gaearon',
    'tj',
    'sindresorhus',
    'addyosmani',
  ];

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
    _initializeAnimations();
    _startAnimations();
  }

  void _initializeAnimations() {
    // Header animation
    _headerAnimationController = AnimationController(vsync: this, duration: AppTheme.slowAnimation);
    _headerSlideAnimation = Tween<Offset>(
      begin: const Offset(-0.3, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _headerAnimationController, curve: Curves.easeOut));
    _headerFadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _headerAnimationController, curve: Curves.easeOut));

    // Search bar animation
    _searchBarAnimationController = AnimationController(
      vsync: this,
      duration: AppTheme.slowAnimation,
    );
    _searchBarSlideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _searchBarAnimationController, curve: Curves.easeOut));

    // Category animation
    _categoryAnimationController = AnimationController(
      vsync: this,
      duration: AppTheme.slowAnimation,
    );
    _categorySlideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _categoryAnimationController, curve: Curves.easeOut));

    // Tags animation controller for restarting animation on category change
    _tagsAnimationController = AnimationController(vsync: this, duration: AppTheme.normalAnimation);
  }

  void _startAnimations() async {
    await _headerAnimationController.forward();
    await Future.delayed(const Duration(milliseconds: 100));
    _searchBarAnimationController.forward();
    await Future.delayed(const Duration(milliseconds: 100));
    _categoryAnimationController.forward();
    await Future.delayed(const Duration(milliseconds: 200));
    _tagsAnimationController.forward();
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  void _handleSubmit() async {
    if (_searchController.text.trim().isNotEmpty) {
      final searchCubit = context.read<SearchCubit>();
      await searchCubit.search(_searchController.text, searchCubit.state.selectedCategory);
      if (mounted) {
        context.read<HomeCubit>().navigateToResults();
      }
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    _headerAnimationController.dispose();
    _searchBarAnimationController.dispose();
    _categoryAnimationController.dispose();
    _tagsAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SearchHeader(
                  slideAnimation: _headerSlideAnimation,
                  fadeAnimation: _headerFadeAnimation,
                ),
                _buildSearchBar(),
                _buildCategorySelection(),
                _buildQuickSearchTags(),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SlideTransition(
          position: _searchBarSlideAnimation,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: AnimatedSearchField(
              controller: _searchController,
              focusNode: _focusNode,
              isFocused: _isFocused,
              isLoading: state.isLoading,
              onSubmit: _handleSubmit,
            ),
          ),
        );
      },
    );
  }

  Widget _buildCategorySelection() {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SlideTransition(
          position: _categorySlideAnimation,
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
                          _tagsAnimationController.reset();
                          _tagsAnimationController.forward();
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
                          _tagsAnimationController.reset();
                          _tagsAnimationController.forward();
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

  Widget _buildQuickSearchTags() {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final tags = state.selectedCategory == SearchCategory.repos
            ? _repoQuickSearchTags
            : _userQuickSearchTags;

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
                      child: QuickSearchTag(
                        tag: entry.value,
                        onTap: () {
                          _searchController.text = entry.value;
                          _handleSubmit();
                        },
                      ),
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
