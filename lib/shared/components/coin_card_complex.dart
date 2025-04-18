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

  const CoinCardComplex({
    super.key,
    required this.imageUrl,
    required this.size,
    required this.onTap,
    required this.isSelected,
    required this.onSelected,
    this.countryImage,
  });

  @override
  Widget build(BuildContext context) {
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
                backgroundColor: colorScheme.surface,
                backgroundImage: AssetImage(countryImage!),
              ),
            ),
        ],
      ),
    );
  }
}
