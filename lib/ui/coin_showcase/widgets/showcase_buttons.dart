import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:flutter/material.dart';

class ShowcaseButtons extends StatelessWidget {
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;

  const ShowcaseButtons({
    super.key,
    required this.onBackPressed,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(color: AppColors.surface),
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ShowcaseButton(
            onPressed: onBackPressed,
            icon: Icons.arrow_back,
            label: "Back",
            iconFirst: true,
          ),
          _ShowcaseButton(
            onPressed: onNextPressed,
            icon: Icons.arrow_forward,
            label: "Next",
            iconFirst: false,
          ),
        ],
      ),
    );
  }
}

class _ShowcaseButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final bool iconFirst;

  const _ShowcaseButton({
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.iconFirst,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: AppColors.onSurface,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children:
            iconFirst
                ? [
                  Icon(icon, color: AppColors.onSurface),
                  const SizedBox(width: AppSizes.p8),
                  Text(label),
                ]
                : [
                  Text(label),
                  const SizedBox(width: AppSizes.p8),
                  Icon(icon, color: AppColors.onSurface),
                ],
      ),
    );
  }
}
