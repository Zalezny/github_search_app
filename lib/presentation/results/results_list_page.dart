import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/domain/entities/github_repo.dart';
import 'package:github_search_app/domain/entities/github_user.dart';
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/presentation/search/search_page.dart';
import 'package:github_search_app/presentation/results/widgets/loading_view.dart';
import 'package:github_search_app/presentation/results/widgets/error_view.dart';
import 'package:github_search_app/presentation/results/widgets/empty_view.dart';
import 'package:github_search_app/presentation/results/widgets/repo_card.dart';
import 'package:github_search_app/presentation/results/widgets/user_card.dart';

class ResultsListPage extends StatefulWidget {
  final List<dynamic> results; // List<GithubRepo> or List<GithubUser>
  final String query;
  final SearchCategory category;
  final bool isLoading;
  final String? error;

  const ResultsListPage({
    super.key,
    required this.results,
    required this.query,
    required this.category,
    required this.isLoading,
    required this.error,
  });

  @override
  State<ResultsListPage> createState() => _ResultsListPageState();
}

class _ResultsListPageState extends State<ResultsListPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: AppTheme.slowAnimation);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppTheme.background, AppTheme.background, AppTheme.card],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(),
              if (widget.isLoading)
                const Expanded(child: LoadingView())
              else if (widget.error != null)
                Expanded(
                  child: ErrorView(
                    error: widget.error!,
                    onRetry: () => context.read<HomeCubit>().retry(),
                  ),
                )
              else if (widget.results.isEmpty)
                const Expanded(child: EmptyView())
              else
                Expanded(child: _buildResultsList()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, -0.2),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeOut)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => context.read<HomeCubit>().backToSearch(),
              color: AppTheme.foreground,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Search Results', style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 4),
                  Text(
                    '"${widget.query}" • ${widget.category == SearchCategory.repos ? 'Repositories' : 'Users'}',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: AppTheme.mutedForeground),
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

  Widget _buildResultsList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: widget.results.length,
      itemBuilder: (context, index) {
        final item = widget.results[index];

        return TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: 1),
          duration: Duration(milliseconds: 300 + (index * 50)),
          curve: Curves.easeOut,
          builder: (context, value, child) {
            return Transform.translate(
              offset: Offset(0, 30 * (1 - value)),
              child: Opacity(opacity: value, child: child),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: widget.category == SearchCategory.repos
                ? RepoCard(
                    repo: item as GithubRepo,
                    onTap: () async {
                      final error = await context.read<HomeCubit>().selectResult(item);
                      if (error != null && context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error: $error'), backgroundColor: Colors.red),
                        );
                      }
                    },
                    formatNumber: _formatNumber,
                  )
                : UserCard(
                    user: item as GithubUser,
                    onTap: () async {
                      final error = await context.read<HomeCubit>().selectResult(item);
                      if (error != null && context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error: $error'), backgroundColor: Colors.red),
                        );
                      }
                    },
                  ),
          ),
        );
      },
    );
  }

  String _formatNumber(int number) {
    if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}k';
    }
    return number.toString();
  }
}
