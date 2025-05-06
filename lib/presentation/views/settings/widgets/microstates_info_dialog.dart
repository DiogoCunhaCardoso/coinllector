import 'package:flutter/material.dart';

void showMicrostatesInfoDialog(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;
  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text("What Are Microstates?", style: textTheme.titleMedium),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Microstates are very small countries that also issue their own Euro coins. "
                  "These are San Marino, Vatican City, Monaco, and Andorra.",
                  style: textTheme.bodyMedium,
                ),
                SizedBox(height: 12),
                Image.asset(
                  'assets/info/microstates_info.png',
                  fit: BoxFit.cover,
                  height: 200,
                ),
                SizedBox(height: 12),
                Text(
                  "These coins are rarer and often harder to find. ",
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
