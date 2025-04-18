import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ShowcaseButtons extends StatelessWidget {
  final void Function()? onBackPressed;
  final void Function()? onNextPressed;

  const ShowcaseButtons({
    super.key,
    required this.onBackPressed,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      height: 72,
      decoration: BoxDecoration(color: colorScheme.surface),
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ShowcaseButton(
            onPressed: onBackPressed,
            icon: Icons.adaptive.arrow_back,
            label: "Back",
            iconFirst: true,
          ),
          _ShowcaseButton(
            onPressed: onNextPressed,
            icon: Icons.adaptive.arrow_forward,
            label: "Next",
            iconFirst: false,
          ),
        ],
      ),
    );
  }
}

class _ShowcaseButton extends StatelessWidget {
  final void Function()? onPressed; // Keep as nullable
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
    final colorScheme = Theme.of(context).colorScheme;

    return TextButton(
      onPressed: onPressed, // Flutter's TextButton accepts nullable callbacks
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children:
            iconFirst
                ? [
                  Icon(
                    icon,
                    color: onPressed == null ? null : colorScheme.onSurface,
                  ),
                  const SizedBox(width: AppSizes.p8),
                  Text(
                    label,
                    style: TextStyle(color: onPressed == null ? null : null),
                  ),
                ]
                : [
                  Text(
                    label,
                    style: TextStyle(color: onPressed == null ? null : null),
                  ),
                  const SizedBox(width: AppSizes.p8),
                  Icon(
                    icon,
                    color: onPressed == null ? null : colorScheme.onSurface,
                  ),
                ],
      ),
    );
  }
}
