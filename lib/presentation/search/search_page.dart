import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/presentation/search/widgets/search_header.dart';
import 'package:github_search_app/presentation/search/widgets/search_bar_section.dart';
import 'package:github_search_app/presentation/search/widgets/category_selection_section.dart';
import 'package:github_search_app/presentation/search/widgets/quick_search_tags_section.dart';
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
                SearchBarSection(
                  slideAnimation: _searchBarSlideAnimation,
                  controller: _searchController,
                  focusNode: _focusNode,
                  isFocused: _isFocused,
                  onSubmit: _handleSubmit,
                ),
                CategorySelectionSection(
                  slideAnimation: _categorySlideAnimation,
                  tagsAnimationController: _tagsAnimationController,
                ),
                QuickSearchTagsSection(
                  repoQuickSearchTags: _repoQuickSearchTags,
                  userQuickSearchTags: _userQuickSearchTags,
                  onTagTap: (tag) {
                    _searchController.text = tag;
                    _handleSubmit();
                  },
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
