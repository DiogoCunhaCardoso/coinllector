import 'package:coinllector_app/config/themes/colors.dart';
import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  final String imageUrl;
  final double size;
  final VoidCallback onTap;

  const CoinCard({
    super.key,
    required this.imageUrl,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Card(
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
      ),
    );
  }
}
