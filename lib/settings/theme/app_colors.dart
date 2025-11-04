import 'package:flutter/material.dart';

/// Application color palette
class AppColors {
  // Base colors
  static const Color background = Color(0xFF1A1A1A); // oklch(0.1 0 0)
  static const Color foreground = Color(0xFFF2F2F2); // oklch(0.95 0 0)
  static const Color card = Color(0xFF262626); // oklch(0.15 0 0)
  static const Color cardForeground = Color(0xFFF2F2F2);

  // Primary - cyan/blue accent oklch(0.65 0.2 230)
  static const Color primary = Color(0xFF3B82F6); // Blue-ish cyan
  static const Color primaryForeground = Color(0xFF1A1A1A);

  // Secondary
  static const Color secondary = Color(0xFF333333); // oklch(0.2 0 0)
  static const Color secondaryForeground = Color(0xFFF2F2F2);

  // Muted
  static const Color muted = Color(0xFF404040); // oklch(0.25 0 0)
  static const Color mutedForeground = Color(0xFFA6A6A6); // oklch(0.65 0 0)

  // UI Elements
  static const Color border = Color(0xFF404040);
  static const Color input = Color(0xFF333333);

  // Gradient colors for categories
  static const Color blueGradientStart = Color(0xFF3B82F6);
  static const Color blueGradientEnd = Color(0xFF06B6D4);

  static const Color purpleGradientStart = Color(0xFFA855F7);
  static const Color purpleGradientEnd = Color(0xFFEC4899);

  // Gradients
  static const LinearGradient blueGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [blueGradientStart, blueGradientEnd],
  );

  static const LinearGradient purpleGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [purpleGradientStart, purpleGradientEnd],
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [background, background, card],
  );
}
