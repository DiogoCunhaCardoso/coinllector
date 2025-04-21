import 'package:flutter/material.dart';

class HeaderInfoText extends StatelessWidget {
  final int owned;
  final int total;

  const HeaderInfoText({super.key, required this.owned, required this.total});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return RichText(
      text: TextSpan(
        style: textTheme.titleMedium,
        children: [TextSpan(text: "$owned/"), TextSpan(text: "$total")],
      ),
    );
  }
}
