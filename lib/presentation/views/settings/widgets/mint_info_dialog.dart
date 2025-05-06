import 'package:flutter/material.dart';

void showMintInfoDialog(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text("What Are Coin Mints?", style: textTheme.titleMedium),

          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Info Text
                Text(
                  "Germany uses mint marks to indicate where a coin was produced."
                  "This means that a coin can have multiple versions with tiny differences, depending on the minting city.",
                  style: textTheme.bodyMedium,
                ),
                Image.asset(
                  'assets/info/mint_info.png',
                  fit: BoxFit.cover,
                  height: 200,
                ),
                SizedBox(height: 12),
                Text(
                  'For example, a German coin can have mint marks like "D" for Munich.',
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Got it"),
            ),
          ],
        ),
  );
}
