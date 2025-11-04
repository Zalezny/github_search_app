import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

enum SearchCategory { repos, users }

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  SearchCategory _selectedCategory = SearchCategory.repos;
  bool _isFocused = false;

  late AnimationController _headerAnimationController;
  late AnimationController _searchBarAnimationController;
  late AnimationController _categoryAnimationController;
  late AnimationController _tagsAnimationController;

  late Animation<Offset> _headerSlideAnimation;
  late Animation<double> _headerFadeAnimation;
  late Animation<Offset> _searchBarSlideAnimation;
  late Animation<Offset> _categorySlideAnimation;
  late Animation<double> _tagsFadeAnimation;

  final List<String> _quickSearchTags = [
    'Next.js',
    'React',
    'TypeScript',
    'Web Design',
    'AI Tools',
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

    // Tags animation
    _tagsAnimationController = AnimationController(vsync: this, duration: AppTheme.normalAnimation);
    _tagsFadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _tagsAnimationController, curve: Curves.easeIn));
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

  void _handleSubmit() {
    if (_searchController.text.trim().isNotEmpty) {
      context.read<HomeCubit>().search(_searchController.text, _selectedCategory);
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppTheme.background, AppTheme.background, AppTheme.card],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              _buildHeader(),

              // Search Bar
              _buildSearchBar(),

              // Category Selection
              _buildCategorySelection(),

              // Quick Search Tags
              Expanded(child: _buildQuickSearchTags()),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return SlideTransition(
      position: _headerSlideAnimation,
      child: FadeTransition(
        opacity: _headerFadeAnimation,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 40, 24, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: AppTheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'DISCOVER & EXPLORE',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(color: AppTheme.primary, fontSize: 11),
                ),
              ),
              const SizedBox(height: 12),
              Text('GitHub Search', style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(height: 12),
              Text(
                'Discover repositories and developers from the GitHub ecosystem',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return SlideTransition(
      position: _searchBarSlideAnimation,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: AnimatedContainer(
          duration: AppTheme.normalAnimation,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: _isFocused ? AppTheme.primary : AppTheme.border,
              width: _isFocused ? 2 : 1,
            ),
            boxShadow: _isFocused
                ? [
                    BoxShadow(
                      color: AppTheme.primary.withValues(alpha: 0.2),
                      blurRadius: 12,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),
          child: TextField(
            controller: _searchController,
            focusNode: _focusNode,
            style: const TextStyle(color: AppTheme.foreground, fontSize: 16),
            decoration: InputDecoration(
              hintText: 'Search repositories or developers...',
              hintStyle: TextStyle(color: AppTheme.mutedForeground, fontSize: 16),
              prefixIcon: AnimatedContainer(
                duration: AppTheme.normalAnimation,
                child: Icon(
                  Icons.search,
                  color: _isFocused ? AppTheme.primary : AppTheme.mutedForeground,
                ),
              ),
              filled: true,
              fillColor: AppTheme.card,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            ),
            onSubmitted: (_) => _handleSubmit(),
          ),
        ),
      ),
    );
  }

  Widget _buildCategorySelection() {
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
                  child: _buildCategoryCard(
                    category: SearchCategory.repos,
                    title: 'Repositories',
                    description: 'GitHub repositories',
                    icon: Icons.folder_outlined,
                    gradientColors: const [AppTheme.blueGradientStart, AppTheme.blueGradientEnd],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildCategoryCard(
                    category: SearchCategory.users,
                    title: 'Users',
                    description: 'Find developers',
                    icon: Icons.people_outline,
                    gradientColors: const [
                      AppTheme.purpleGradientStart,
                      AppTheme.purpleGradientEnd,
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard({
    required SearchCategory category,
    required String title,
    required String description,
    required IconData icon,
    required List<Color> gradientColors,
  }) {
    final isSelected = _selectedCategory == category;

    return _AnimatedCategoryCard(
      isSelected: isSelected,
      gradientColors: gradientColors,
      title: title,
      description: description,
      icon: icon,
      onTap: () {
        setState(() {
          _selectedCategory = category;
        });
      },
    );
  }

  Widget _buildQuickSearchTags() {
    return FadeTransition(
      opacity: _tagsFadeAnimation,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('QUICK SEARCH', style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: _quickSearchTags.asMap().entries.map((entry) {
                return TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0, end: 1),
                  duration: Duration(milliseconds: 300 + (entry.key * 50)),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: Opacity(opacity: value, child: child),
                    );
                  },
                  child: _buildQuickSearchTag(entry.value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickSearchTag(String tag) {
    return _AnimatedQuickSearchTag(
      tag: tag,
      onTap: () {
        setState(() {
          _searchController.text = tag;
        });
      },
    );
  }
}

// Animated quick search tag widget
class _AnimatedQuickSearchTag extends StatefulWidget {
  final String tag;
  final VoidCallback onTap;

  const _AnimatedQuickSearchTag({required this.tag, required this.onTap});

  @override
  State<_AnimatedQuickSearchTag> createState() => _AnimatedQuickSearchTagState();
}

class _AnimatedQuickSearchTagState extends State<_AnimatedQuickSearchTag>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    _scaleController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _scaleController.reverse();
  }

  void _handleTapCancel() {
    _scaleController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: widget.onTap,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: AppTheme.card.withValues(alpha: 0.5),
            border: Border.all(color: AppTheme.border),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.tag, style: const TextStyle(color: AppTheme.foreground, fontSize: 14)),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, size: 14, color: AppTheme.mutedForeground),
            ],
          ),
        ),
      ),
    );
  }
}

// Animated pulse widget
class AnimatedPulse extends StatefulWidget {
  const AnimatedPulse({super.key});

  @override
  State<AnimatedPulse> createState() => _AnimatedPulseState();
}

class _AnimatedPulseState extends State<AnimatedPulse> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))
      ..repeat(reverse: true);
    _animation = Tween<double>(
      begin: 1.0,
      end: 0.7,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _animation, child: Container());
  }
}

// Animated category card widget
class _AnimatedCategoryCard extends StatefulWidget {
  final bool isSelected;
  final List<Color> gradientColors;
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const _AnimatedCategoryCard({
    required this.isSelected,
    required this.gradientColors,
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  State<_AnimatedCategoryCard> createState() => _AnimatedCategoryCardState();
}

class _AnimatedCategoryCardState extends State<_AnimatedCategoryCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.97,
    ).animate(CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    _scaleController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _scaleController.reverse();
  }

  void _handleTapCancel() {
    _scaleController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: widget.onTap,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AnimatedContainer(
          duration: AppTheme.normalAnimation,
          curve: Curves.easeOut,
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: widget.isSelected
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: widget.gradientColors,
                  )
                : null,
            color: widget.isSelected ? null : widget.gradientColors[0].withValues(alpha: 0.1),
            border: Border.all(
              color: widget.isSelected ? Colors.transparent : AppTheme.border,
              width: 1,
            ),
            boxShadow: widget.isSelected
                ? [
                    BoxShadow(
                      color: widget.gradientColors[0].withValues(alpha: 0.3),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ]
                : [],
          ),
          child: Stack(
            children: [
              // Content
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: AppTheme.normalAnimation,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: widget.isSelected ? 0.2 : 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        widget.icon,
                        size: 32,
                        color: widget.isSelected ? Colors.white : AppTheme.foreground,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: widget.isSelected ? Colors.white : AppTheme.foreground,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: 13,
                        color: widget.isSelected
                            ? Colors.white.withValues(alpha: 0.8)
                            : AppTheme.mutedForeground,
                      ),
                    ),
                  ],
                ),
              ),
              // Selected indicator
              if (widget.isSelected)
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const AnimatedPulse(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
