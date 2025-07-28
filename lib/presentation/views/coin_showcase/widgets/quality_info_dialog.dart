import 'package:flutter/material.dart';

void showCoinQualityInfoDialog(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;

  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text("Coin Quality Explained", style: textTheme.titleMedium),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Circulated Qualities:",
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "• Bad: Heavily worn with major signs of usage. Many details are faded or missing.\n\n"
                  "• Average: Clearly used, but most design elements are still visible.\n\n"
                  "• Good: Light wear from circulation, with most details still sharp and clean.",
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),

                Text(
                  "Uncirculated Qualities:",
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "• UNC (Uncirculated): A coin that has never been used in circulation. May show minor imperfections from the minting process or storage in bags.\n\n"
                  "• BU (Brilliant Uncirculated): Higher quality than standard UNC. These coins often come in coin cards or blisters and have a shinier look. BU coins are handled more carefully at the mint to avoid marks.\n\n"
                  "• Proof: The highest quality. Minted using specially polished dies, giving the coin a mirror-like background with frosted relief (called a 'cameo effect'). Proof coins are packaged in boxes or capsules for protection and presentation.",
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),

                Text(
                  "Important Note:",
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Not all coins are available in every quality. Many coins are only minted in specific qualities. The available qualities depend on the mint's production decisions for each specific coin.",
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Got it"),
            ),
          ],
        ),
  );
}
