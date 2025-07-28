import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  final Color unselectedColor;
  final bool isUnselectedOnShowcase;
  final bool isDisabled;
  final bool isVisuallyDisabled;

  const TabButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,

    this.unselectedColor = Colors.transparent,
    this.isUnselectedOnShowcase = false,
    this.isDisabled = false,
    this.isVisuallyDisabled = false, // Allows tapping but styles as disabled
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: FilledButton(
        onPressed:
            isDisabled
                ? null
                : onPressed, // Only truly disabled if isDisabled is true
        style: FilledButton.styleFrom(
          backgroundColor: isSelected ? colorScheme.onSurface : unselectedColor,
          disabledBackgroundColor:
              isSelected ? colorScheme.onSurface : unselectedColor,
          foregroundColor: colorScheme.surface,
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
            child: Text(
              text,
              style: textTheme.labelLarge!.copyWith(
                color:
                    (isDisabled ||
                            isVisuallyDisabled) // Style as disabled for both states
                        ? colorScheme.onSurface.withValues(alpha: 0.15)
                        : isSelected
                        ? colorScheme.surface
                        : isUnselectedOnShowcase
                        ? colorScheme.onSurface.withValues(alpha: 0.5)
                        : colorScheme.surface.withValues(alpha: 0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
