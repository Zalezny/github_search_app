import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/domain/entities/github_user_detail.dart';
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_cubit.dart';
import 'package:github_search_app/presentation/detail/cubit/detail_state.dart';
import 'package:github_search_app/settings/injection.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/settings/theme/app_colors.dart';
import 'package:github_search_app/presentation/search/search_page.dart';
import 'package:github_search_app/presentation/detail/widgets/detail_header.dart';
import 'package:github_search_app/presentation/detail/widgets/repo_detail_content.dart';
import 'package:github_search_app/presentation/detail/widgets/user_detail_content.dart';

class DetailPage extends StatefulWidget {
  final dynamic item; // GithubRepo or GithubUserDetail
  final SearchCategory category;

  const DetailPage({super.key, required this.item, required this.category});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  late AnimationController _avatarController;
  late Animation<double> _avatarScale;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: AppTheme.slowAnimation);
    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut));
    _animationController.forward();

    _avatarController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _avatarScale = Tween<double>(
      begin: 1.0,
      end: 1.04,
    ).animate(CurvedAnimation(parent: _avatarController, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _animationController.dispose();
    _avatarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailCubit>()..loadItemDetails(widget.item),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
          child: SafeArea(
            child: Column(
              children: [
                DetailHeader(
                  onBack: () => context.read<HomeCubit>().backToResults(),
                  animation: _animationController,
                ),
                Expanded(
                  child: BlocBuilder<DetailCubit, DetailState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (state.error != null) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.error_outline, size: 64, color: Colors.red.shade300),
                              const SizedBox(height: 16),
                              Text(
                                state.error!,
                                style: const TextStyle(color: Colors.white70),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      }

                      return widget.category == SearchCategory.repos
                          ? RepoDetailContent(
                              repo: state.item as GithubRepo,
                              fadeAnimation: _fadeAnimation,
                              slideAnimation: _slideAnimation,
                              avatarScale: _avatarScale,
                              gradientColors: _heroColors(),
                              category: widget.category,
                            )
                          : UserDetailContent(
                              user: state.item as GithubUserDetail,
                              fadeAnimation: _fadeAnimation,
                              slideAnimation: _slideAnimation,
                              avatarScale: _avatarScale,
                              gradientColors: _heroColors(),
                              category: widget.category,
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Color> _heroColors() {
    return widget.category == SearchCategory.repos
        ? [
            AppTheme.blueGradientStart.withValues(alpha: 0.18),
            AppTheme.blueGradientEnd.withValues(alpha: 0.12),
          ]
        : [
            AppTheme.purpleGradientStart.withValues(alpha: 0.18),
            AppTheme.purpleGradientEnd.withValues(alpha: 0.12),
          ];
  }
}
