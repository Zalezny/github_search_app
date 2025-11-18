import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';
import 'package:github_search_app/settings/theme/app_colors.dart';
import 'package:github_search_app/presentation/results/widgets/loading_view.dart';
import 'package:github_search_app/presentation/results/widgets/error_view.dart';
import 'package:github_search_app/presentation/results/widgets/empty_view.dart';
import 'package:github_search_app/presentation/results/widgets/results_header.dart';
import 'package:github_search_app/presentation/results/widgets/results_list_view.dart';

class ResultsListPage extends StatefulWidget {
  const ResultsListPage({super.key});

  @override
  State<ResultsListPage> createState() => _ResultsListPageState();
}

class _ResultsListPageState extends State<ResultsListPage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: AppTheme.slowAnimation);
    _animationController.forward();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.7) {
      context.read<SearchCubit>().loadMoreResults();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
            child: SafeArea(
              child: Column(
                children: [
                  ResultsHeader(
                    animationController: _animationController,
                    query: state.searchQuery,
                    category: state.selectedCategory,
                  ),
                  if (state.isLoading)
                    const Expanded(child: LoadingView())
                  else if (state.error != null)
                    Expanded(
                      child: ErrorView(
                        error: state.error!,
                        onRetry: () => context.read<SearchCubit>().retry(),
                      ),
                    )
                  else if (state.results.isEmpty)
                    const Expanded(child: EmptyView())
                  else
                    Expanded(
                      child: ResultsListView(state: state, scrollController: _scrollController),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
