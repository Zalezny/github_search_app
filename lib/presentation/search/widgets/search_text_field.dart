import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isLoading;
  final bool isFocused;
  final VoidCallback onSubmit;

  const SearchTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.isLoading,
    required this.isFocused,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      enabled: !isLoading,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: isLoading
            ? 'Searching...'
            : 'Search repositories or developers...',
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          fontSize: 16,
        ),
        prefixIcon: AnimatedSwitcher(
          duration: AppDurations.fast,
          child: isLoading
              ? const Padding(
                  key: ValueKey('loading'),
                  padding: EdgeInsets.all(AppSpacing.md + AppSpacing.xxs),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              : Icon(
                  key: const ValueKey('search'),
                  Icons.search,
                  color: isFocused
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.tertiary,
        border: OutlineInputBorder(
          borderRadius: AppRadii.large,
          borderSide: BorderSide.none,
        ),
        contentPadding: AppSpacing.card,
      ),
      onSubmitted: (_) => onSubmit(),
    );
  }
}
