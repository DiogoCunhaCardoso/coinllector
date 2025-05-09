import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class GradientCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double size;
  final double borderWidth;
  final double borderRadius;

  const GradientCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.size = AppSizes.p24,
    this.borderWidth = 1.5,
    this.borderRadius = 4.0,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color:
                value ? Colors.transparent : colorScheme.gradient.colors.first,
            width: borderWidth,
          ),
          gradient: value ? colorScheme.gradient : null,
        ),
        child:
            value
                ? const Center(
                  child: Icon(Icons.check, size: 18, color: Colors.white),
                )
                : null,
      ),
    );
  }
}
