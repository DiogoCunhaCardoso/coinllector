import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';

class ShowcaseStats extends StatelessWidget {
  final Coin coin;

  const ShowcaseStats({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (coin.quantity != null && coin.quantity! > 0)
            Column(
              children: [
                Text(
                  coin.quantity.toString(),
                  style: TextStyle(color: colorScheme.onSurfaceVariant),
                ),
                const Text("Quantity"),
              ],
            ),
          if (coin.quantity != null && coin.quantity! > 0)
            SizedBox(width: AppSizes.p24),
          Column(
            children: [
              Text(
                convertDate(coin.periodStartDate),
                style: TextStyle(color: colorScheme.onSurfaceVariant),
              ),
              const Text("Release"),
            ],
          ),
        ],
      ),
    );
  }
}
