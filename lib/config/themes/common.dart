import 'package:flutter/material.dart';
import 'package:coinllector_app/config/themes/sizes.dart';

class CustomWidgetStyles {
  static AppBarTheme getAppBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: colorScheme.onSurface),
      titleTextStyle: TextStyle(
        color: colorScheme.onSurface,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      scrolledUnderElevation: 0,
    );
  }

  static CardTheme getCardTheme(ColorScheme colorScheme) {
    return CardTheme().copyWith(
      elevation: 0,
      color: colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.r8)),
      ),
    );
  }
}
