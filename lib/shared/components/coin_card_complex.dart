import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/components/gradient_checkbox.dart';
import 'package:flutter/material.dart';

class CoinCardComplex extends StatelessWidget {
  final String imageUrl;
  final double size;
  final VoidCallback onTap;
  final bool isSelected;
  final ValueChanged<bool> onSelected;
  final String? countryImage;
  final String? mintOwnedCount;

  const CoinCardComplex({
    super.key,
    required this.imageUrl,
    required this.size,
    required this.onTap,
    required this.isSelected,
    required this.onSelected,
    this.countryImage,
    this.mintOwnedCount,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Card(
            color: colorScheme.surfaceContainerHighest,
            child: Center(
              child: Image.asset(
                imageUrl,
                width: size,
                height: size,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: AppSizes.p12,
            left: AppSizes.p12,
            child: GradientCheckbox(
              value: isSelected,
              onChanged: (value) => onSelected(value),
            ),
          ),
          if (countryImage != null)
            Positioned(
              bottom: AppSizes.p8 + 6,
              right: AppSizes.p8 + 6,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: colorScheme.surfaceContainerHighest,
                backgroundImage: AssetImage(countryImage!),
              ),
            ),
          if (mintOwnedCount != null)
            Positioned(
              top: AppSizes.p8 + 8,
              right: AppSizes.p8 + 6,
              child: Text('$mintOwnedCount/5', style: textTheme.labelMedium),
            ),
        ],
      ),
    );
  }
}
