import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/app/cubit/home_cubit.dart';
import 'package:github_search_app/presentation/app/cubit/home_state.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/settings/injection.dart';
import 'package:github_search_app/presentation/detail/detail_page.dart';
import 'package:github_search_app/presentation/results/results_list_page.dart';
import 'package:github_search_app/presentation/search/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeCubit>()),
        BlocProvider(create: (context) => getIt<SearchCubit>()),
      ],
      child: const _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return PopScope(
          canPop: cubit.canPop(),
          onPopInvokedWithResult: (didPop, result) {
            if (didPop) return;
            cubit.handleBackNavigation();
          },
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: _buildCurrentPage(context, state),
          ),
        );
      },
    );
  }

  Widget _buildCurrentPage(BuildContext context, HomeState state) {
    switch (state.currentPage) {
      case AppPage.search:
        return const SearchPage(key: ValueKey('search'));
      case AppPage.results:
        return const ResultsListPage(key: ValueKey('results'));
      case AppPage.detail:
        return DetailPage(key: const ValueKey('detail'), item: state.selectedItem!);
    }
  }
}
