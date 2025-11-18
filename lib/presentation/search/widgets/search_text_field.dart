import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

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
      style: const TextStyle(color: AppTheme.foreground, fontSize: 16),
      decoration: InputDecoration(
        hintText: isLoading ? 'Searching...' : 'Search repositories or developers...',
        hintStyle: TextStyle(color: AppTheme.mutedForeground, fontSize: 16),
        prefixIcon: AnimatedSwitcher(
          duration: AppTheme.fastAnimation,
          child: isLoading
              ? const Padding(
                  key: ValueKey('loading'),
                  padding: EdgeInsets.all(14.0),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primary),
                    ),
                  ),
                )
              : Icon(
                  key: const ValueKey('search'),
                  Icons.search,
                  color: isFocused ? AppTheme.primary : AppTheme.mutedForeground,
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
      onSubmitted: (_) => onSubmit(),
    );
  }
}
