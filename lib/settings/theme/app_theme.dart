import 'package:flutter/material.dart';

class AppTheme {
  // Dark theme colors matching globals.css
  static const Color background = Color(0xFF1A1A1A); // oklch(0.1 0 0)
  static const Color foreground = Color(0xFFF2F2F2); // oklch(0.95 0 0)
  static const Color card = Color(0xFF262626); // oklch(0.15 0 0)
  static const Color cardForeground = Color(0xFFF2F2F2);

  // Primary - cyan/blue accent oklch(0.65 0.2 230)
  static const Color primary = Color(0xFF3B82F6); // Blue-ish cyan
  static const Color primaryForeground = Color(0xFF1A1A1A);

  static const Color secondary = Color(0xFF333333); // oklch(0.2 0 0)
  static const Color secondaryForeground = Color(0xFFF2F2F2);

  static const Color muted = Color(0xFF404040); // oklch(0.25 0 0)
  static const Color mutedForeground = Color(0xFFA6A6A6); // oklch(0.65 0 0)

  static const Color border = Color(0xFF404040);
  static const Color input = Color(0xFF333333);

  // Gradient colors for categories
  static const Color blueGradientStart = Color(0xFF3B82F6);
  static const Color blueGradientEnd = Color(0xFF06B6D4);

  static const Color purpleGradientStart = Color(0xFFA855F7);
  static const Color purpleGradientEnd = Color(0xFFEC4899);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      colorScheme: const ColorScheme.dark(
        surface: background,
        onSurface: foreground,
        primary: primary,
        onPrimary: primaryForeground,
        secondary: secondary,
        onSecondary: secondaryForeground,
        tertiary: card,
        onTertiary: cardForeground,
        outline: border,
        outlineVariant: muted,
      ),
      cardTheme: CardThemeData(
        color: card,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: card,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primary, width: 2),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: foreground,
          height: 1.2,
        ),
        headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: foreground),
        bodyLarge: TextStyle(fontSize: 16, color: foreground),
        bodyMedium: TextStyle(fontSize: 14, color: mutedForeground),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: mutedForeground,
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
