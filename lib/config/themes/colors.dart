import 'package:flutter/material.dart';

class AppColors {
  // Surfaces
  static const Color surface = Color(0xFF000000);
  static const Color surfaceVariant = Color(0xFF222227);
  static const Color onSurface = Color(0xFFFFFFFF);
  static const Color onSurfaceVariant = Color(0xBBBBBBBB);

  static const Color primary = Color(0xFF5581FF);
  static const Color secondary = Color(0xFFCCD9FF);
  static const Color premium = Color(0xFFFFCF27);

  // Gradient
  static const Gradient gradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF7D96FA), // 0%
      Color(0xFF6B8BFF), // 35%
      Color(0xFFA1A3F3), // 100%
    ],
  );
}
