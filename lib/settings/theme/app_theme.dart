import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_colors.dart';
import 'package:github_search_app/settings/theme/app_design_tokens.dart';

/// App-specific semantic colors not covered by Material's [ColorScheme].
@immutable
class AppThemeColors extends ThemeExtension<AppThemeColors> {
  final LinearGradient backgroundGradient;
  final LinearGradient repositoryGradient;
  final LinearGradient userGradient;
  final Color onGradient;

  const AppThemeColors({
    required this.backgroundGradient,
    required this.repositoryGradient,
    required this.userGradient,
    required this.onGradient,
  });

  static const dark = AppThemeColors(
    backgroundGradient: AppColors.backgroundGradient,
    repositoryGradient: AppColors.blueGradient,
    userGradient: AppColors.purpleGradient,
    onGradient: AppColors.foreground,
  );

  @override
  AppThemeColors copyWith({
    LinearGradient? backgroundGradient,
    LinearGradient? repositoryGradient,
    LinearGradient? userGradient,
    Color? onGradient,
  }) => AppThemeColors(
    backgroundGradient: backgroundGradient ?? this.backgroundGradient,
    repositoryGradient: repositoryGradient ?? this.repositoryGradient,
    userGradient: userGradient ?? this.userGradient,
    onGradient: onGradient ?? this.onGradient,
  );

  @override
  AppThemeColors lerp(covariant AppThemeColors? other, double t) {
    if (other == null) return this;
    return AppThemeColors(
      backgroundGradient: LinearGradient.lerp(
        backgroundGradient,
        other.backgroundGradient,
        t,
      )!,
      repositoryGradient: LinearGradient.lerp(
        repositoryGradient,
        other.repositoryGradient,
        t,
      )!,
      userGradient: LinearGradient.lerp(userGradient, other.userGradient, t)!,
      onGradient: Color.lerp(onGradient, other.onGradient, t)!,
    );
  }
}

extension AppThemeContext on BuildContext {
  AppThemeColors get appColors => Theme.of(this).extension<AppThemeColors>()!;
}

abstract final class AppTheme {
  static ThemeData get darkTheme {
    const colorScheme = ColorScheme.dark(
      surface: AppColors.background,
      onSurface: AppColors.foreground,
      onSurfaceVariant: AppColors.mutedForeground,
      primary: AppColors.primary,
      onPrimary: AppColors.primaryForeground,
      secondary: AppColors.secondary,
      onSecondary: AppColors.secondaryForeground,
      tertiary: AppColors.card,
      onTertiary: AppColors.cardForeground,
      error: AppColors.error,
      onError: AppColors.foreground,
      outline: AppColors.border,
      outlineVariant: AppColors.muted,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.surface,
      extensions: const [AppThemeColors.dark],
      cardTheme: const CardThemeData(
        color: AppColors.card,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: AppRadii.large),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: AppColors.card,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.lg,
        ),
        border: OutlineInputBorder(
          borderRadius: AppRadii.large,
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadii.large,
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadii.large,
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xxxl,
            vertical: AppSpacing.lg,
          ),
          shape: const RoundedRectangleBorder(borderRadius: AppRadii.medium),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: AppColors.error,
        contentTextStyle: TextStyle(color: AppColors.foreground),
        behavior: SnackBarBehavior.floating,
      ),
      iconTheme: const IconThemeData(color: AppColors.mutedForeground),
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
}
