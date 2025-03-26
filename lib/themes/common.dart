import 'package:flutter/material.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';

class CustomWidgetStyles {
  static AppBarTheme getAppBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.onSurface, //change your color here
      ),
      titleTextStyle: TextStyle(
        color: AppColors.onSurface,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static CardTheme getCardTheme(ColorScheme colorScheme) {
    return CardTheme().copyWith(
      elevation: 0,
      color: AppColors.surfaceVariant,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.r8)),
      ),
    );
  }
}
