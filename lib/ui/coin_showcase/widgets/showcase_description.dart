import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';

class ShowcaseDescription extends StatelessWidget {
  final Coin coin;

  const ShowcaseDescription({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          capitalizeFst(coin.country.name.toLowerCase()),
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(coin.description),
      ],
    );
  }
}
