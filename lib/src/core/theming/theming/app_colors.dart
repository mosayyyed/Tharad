import 'package:flutter/material.dart';

class AppColors {
  // ---------- Primary Gradient ----------
  static const Color primaryStart = Color(0xFF54B7BB);
  static const Color primaryEnd = Color(0xFF265355);
  static const Color primary = primaryStart;

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryStart, primaryEnd],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // ---------- Semantic Colors ----------
  static const Color error = Color(0xFFF44336);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFA000);

  // ---------- Neutrals ----------
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color greyLight = Color(0xFFE0E0E0);
  static const Color greyDark = Color(0xFF616161);

  // ---------- Text Colors ----------
  static const Color textPrimary = Color(0xFF111827);
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textOnSecondary = Color(0xFF000000);

  // ---------- Backgrounds ----------
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color darkBackground = Color(0xFF0B1720);
  static const Color lightSurface = Color(0xFFF7F9FB);
  static const Color darkSurface = Color(0xFF121417);

  // ---------- Private ----------
  const AppColors._();
}
