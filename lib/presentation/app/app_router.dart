import 'package:flutter/material.dart';
import 'package:github_search_app/domain/entities/search_result.dart';
import 'package:github_search_app/presentation/detail/detail_page.dart';
import 'package:github_search_app/presentation/results/results_list_page.dart';
import 'package:github_search_app/presentation/search/search_page.dart';
import 'package:go_router/go_router.dart';

abstract final class AppRoutes {
  static const search = 'search';
  static const results = 'results';
  static const detail = 'detail';
}

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.search,
      pageBuilder: (context, state) =>
          _animatedPage(state: state, child: const SearchPage()),
    ),
    GoRoute(
      path: '/results',
      name: AppRoutes.results,
      pageBuilder: (context, state) =>
          _animatedPage(state: state, child: const ResultsListPage()),
      routes: [
        GoRoute(
          path: 'detail',
          name: AppRoutes.detail,
          redirect: (context, state) =>
              state.extra is SearchResultItem ? null : '/results',
          pageBuilder: (context, state) => _animatedPage(
            state: state,
            child: DetailPage(item: state.extra! as SearchResultItem),
          ),
        ),
      ],
    ),
  ],
);

CustomTransitionPage<void> _animatedPage({
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    transitionDuration: const Duration(milliseconds: 300),
    reverseTransitionDuration: const Duration(milliseconds: 300),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final incomingPosition = Tween<Offset>(
        begin: const Offset(0.1, 0),
        end: Offset.zero,
      ).animate(animation);
      final outgoingPosition = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(0.1, 0),
      ).animate(secondaryAnimation);

      return FadeTransition(
        opacity: animation,
        child: FadeTransition(
          opacity: ReverseAnimation(secondaryAnimation),
          child: SlideTransition(
            position: incomingPosition,
            child: SlideTransition(position: outgoingPosition, child: child),
          ),
        ),
      );
    },
  );
}
