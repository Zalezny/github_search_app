import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_colors.dart';

class AppTheme {
  // Re-export colors for backward compatibility
  static const Color background = AppColors.background;
  static const Color foreground = AppColors.foreground;
  static const Color card = AppColors.card;
  static const Color cardForeground = AppColors.cardForeground;

  static const Color primary = AppColors.primary;
  static const Color primaryForeground = AppColors.primaryForeground;

  static const Color secondary = AppColors.secondary;
  static const Color secondaryForeground = AppColors.secondaryForeground;

  static const Color muted = AppColors.muted;
  static const Color mutedForeground = AppColors.mutedForeground;

  static const Color border = AppColors.border;
  static const Color input = AppColors.input;

  static const Color blueGradientStart = AppColors.blueGradientStart;
  static const Color blueGradientEnd = AppColors.blueGradientEnd;

  static const Color purpleGradientStart = AppColors.purpleGradientStart;
  static const Color purpleGradientEnd = AppColors.purpleGradientEnd;

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        surface: AppColors.background,
        onSurface: AppColors.foreground,
        primary: AppColors.primary,
        onPrimary: AppColors.primaryForeground,
        secondary: AppColors.secondary,
        onSecondary: AppColors.secondaryForeground,
        tertiary: AppColors.card,
        onTertiary: AppColors.cardForeground,
        outline: AppColors.border,
        outlineVariant: AppColors.muted,
      ),
      cardTheme: CardThemeData(
        color: AppColors.card,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.card,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: AppColors.foreground,
          height: 1.2,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.foreground,
        ),
        bodyLarge: TextStyle(fontSize: 16, color: AppColors.foreground),
        bodyMedium: TextStyle(fontSize: 14, color: AppColors.mutedForeground),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: AppColors.mutedForeground,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  // Animation durations
  static const Duration fastAnimation = Duration(milliseconds: 200);
  static const Duration normalAnimation = Duration(milliseconds: 300);
  static const Duration slowAnimation = Duration(milliseconds: 400);
}
