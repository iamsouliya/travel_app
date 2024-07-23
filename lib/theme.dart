import 'package:flutter/material.dart';

class AppColors {
  // Define the primary color
  static Color primaryColor = const Color(0xFF01446B);

  // Define shades of the primary color
  static Color primaryAccent = const Color(0xFF01355A); // Darker shade
  static Color secondaryColor = const Color(0xFF012A4B); // Even darker shade
  static Color secondaryAccent = const Color(0xFF011F3C); // Darkest shade
  static Color titleColor = const Color(0xFF89AFC3); // Lighter shade
  static Color textColor = const Color(0xFF457994); // Intermediate shade
  static Color successColor =
      const Color(0xFF017A93); // A different shade in the same family
  static Color highlightColor = const Color(0xFF0195BD); // Highlight shade
}

ThemeData primaryTheme = ThemeData(
  // Seed color theme
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
  ),

  // Scaffold background color
  scaffoldBackgroundColor: AppColors.secondaryAccent,

  // AppBar theme colors
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),

  // Text theme
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.textColor,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.titleColor,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  ),

  // Card theme
  cardTheme: CardTheme(
    color: AppColors.secondaryColor.withOpacity(0.5),
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: const EdgeInsets.only(bottom: 16),
  ),
);
