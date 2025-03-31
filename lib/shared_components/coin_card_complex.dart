import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
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
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Card(
            color: AppColors.surfaceVariant,
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
            top: AppSizes.p8 - 6,
            left: AppSizes.p8 - 6,
            child: Transform.scale(
              scale: 1.2,
              child: Checkbox(
                value: isSelected,
                onChanged: (value) => onSelected(value ?? false),
                fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                  return states.contains(WidgetState.selected)
                      ? AppColors.primary
                      : AppColors.onSurfaceVariant;
                }),
              ),
            ),
          ),
          if (countryImage != null)
            Positioned(
              bottom: AppSizes.p8 + 6,
              right: AppSizes.p8 + 6,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.surface,
                backgroundImage: AssetImage(countryImage!),
              ),
            ),
        ],
      ),
    );
  }
}
