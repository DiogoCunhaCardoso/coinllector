// material_theme.dart

import 'package:coinllector_app/config/themes/common.dart';
import 'package:coinllector_app/config/themes/typography.dart';
import 'package:flutter/material.dart';

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  // HERE IS MY DARK MODE (IN THE FUTURE MIGHT ADD A LIGHT MODE)

  static ColorScheme darkScheme() {
    return const ColorScheme.dark().copyWith(
      surface: Color(0xFF000000),
      surfaceContainerHighest: Color(0xFF222227), // deprecated, surfaceVariant
      onSurface: Color(0xFFFFFFFF),
      onSurfaceVariant: Color(0xFF8C8D8E),
      primary: Color(0xFF5581FF),
      secondary: Color(0xFFCCD9FF),
      tertiary: Color(0xFFFFCF27), // premium color
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: createAppTextTheme(colorScheme),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
    appBarTheme: CustomWidgetStyles.getAppBarTheme(colorScheme),
    cardTheme: CustomWidgetStyles.getCardTheme(colorScheme),
    snackBarTheme: CustomWidgetStyles.getSnackBarTheme(colorScheme, textTheme),
  );

  // Gradient
  static LinearGradient get primaryGradient => const LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF7D96FA), // 0%
      Color(0xFF6B8BFF), // 35%
      Color(0xFFA1A3F3), // 100%
    ],
  );
}

// Extension to easily access colors from Theme
extension ColorSchemeExtension on ColorScheme {
  Color get premium => tertiary;

  // Access to gradient
  LinearGradient get gradient => MaterialTheme.primaryGradient;
}
