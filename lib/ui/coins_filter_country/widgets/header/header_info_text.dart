import 'package:coinllector_app/themes/typography.dart';
import 'package:flutter/material.dart';

class HeaderInfoText extends StatelessWidget {
  final int owned;
  final int total;

  const HeaderInfoText({super.key, required this.owned, required this.total});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppTextStyles.bodyMedium,
        children: [TextSpan(text: "$owned/"), TextSpan(text: "$total")],
      ),
    );
  }
}
