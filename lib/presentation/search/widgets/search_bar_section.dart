import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/presentation/search/cubit/search_cubit.dart';
import 'package:github_search_app/presentation/search/cubit/search_state.dart';
import 'package:github_search_app/presentation/search/widgets/animated_search_field.dart';

class SearchBarSection extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isFocused;
  final VoidCallback onSubmit;

  const SearchBarSection({
    super.key,
    required this.slideAnimation,
    required this.controller,
    required this.focusNode,
    required this.isFocused,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return SlideTransition(
          position: slideAnimation,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: AnimatedSearchField(
              controller: controller,
              focusNode: focusNode,
              isFocused: isFocused,
              isLoading: state.isLoading,
              onSubmit: onSubmit,
            ),
          ),
        );
      },
    );
  }
}
