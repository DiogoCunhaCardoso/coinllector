import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;
  final Color selectedColor;
  final Color unselectedColor;
  final Color textColor;

  const TabButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
    this.selectedColor = AppColors.onSurface,
    this.unselectedColor = Colors.transparent,
    this.textColor = AppColors.surface,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        // Remove fixed height constraints
        child: FilledButton(
          onPressed: onPressed,
          style: FilledButton.styleFrom(
            backgroundColor: isSelected ? selectedColor : unselectedColor,
            foregroundColor: textColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.r8),
            ),
            textStyle: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
              ), // Minimal vertical padding
              child: Text(text),
            ),
          ),
        ),
      ),
    );
  }
}
