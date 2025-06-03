import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  final String imageUrl;
  final double size;
  final VoidCallback onTap;
  final String countryName;

  const CoinCard({
    super.key,
    required this.imageUrl,
    required this.size,
    required this.onTap,
    this.countryName = "",
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Card(
          color: colorScheme.surfaceContainerHighest,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imageUrl,
                  width: size,
                  height: size,
                  fit: BoxFit.contain,
                ),
                if (countryName.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  Text(
                    countryName == "EU"
                        ? countryName
                        : capitalizeFst(countryName),
                    style: textTheme.labelSmall,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
