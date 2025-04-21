import 'package:flutter/material.dart';

TextTheme createAppTextTheme(ColorScheme colorScheme) {
  return TextTheme(
    // TITLE --------------------------
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: colorScheme.onSurface,
    ),

    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: colorScheme.onSurface,
    ),

    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: colorScheme.onSurface,
    ),

    // BODY --------------------------
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurface,
      letterSpacing: 0.5,
    ),

    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: colorScheme.onSurface,
      letterSpacing: 0.5,
      height: 1.7,
    ),

    // LABEL --------------------------
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurface,
    ),

    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: colorScheme.onSurface,
    ),

    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: colorScheme.onSurface,
    ),
  );
}
