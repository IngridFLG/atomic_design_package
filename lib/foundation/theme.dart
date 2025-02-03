import 'package:flutter/material.dart';
import '../tokens/colors.dart';
import '../tokens/typography.dart';

/// Tema principal del sistema de diseño.
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    textTheme: TextTheme(
      displayLarge: AppTypography.heading,
      bodyLarge: AppTypography.body,
      bodySmall: AppTypography.caption, 
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTypography.body,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );
}
