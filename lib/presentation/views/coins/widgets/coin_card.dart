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
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Card(
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
      ),
    );
  }
}
