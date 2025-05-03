import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';

class ShowcaseDescription extends StatelessWidget {
  final Coin coin;

  const ShowcaseDescription({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          capitalizeFst(coin.country.name.toLowerCase()),
          style: textTheme.titleMedium,
        ),
        if (coin.periodEndDate != null)
          Text(
            '${convertDateToYear(coin.periodStartDate)} - ${convertDateToYear(coin.periodEndDate!)}',
          ),
        const SizedBox(height: AppSizes.p12),
        Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: Text(coin.description, style: textTheme.bodyMedium),
        ),
      ],
    );
  }
}
