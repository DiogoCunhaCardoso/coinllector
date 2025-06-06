import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShowcaseStats extends StatelessWidget {
  final Coin coin;

  const ShowcaseStats({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final countryProvider = Provider.of<CountryProvider>(
      context,
      listen: false,
    );

    return FutureBuilder(
      future: countryProvider.getCountry(coin.country),
      builder: (context, snapshot) {
        final country = snapshot.data;

        return Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (coin.quantity != null && coin.quantity! > 0)
                Column(
                  children: [
                    Text(
                      formatCompactNumber(coin.quantity!),
                      style: TextStyle(color: colorScheme.onSurfaceVariant),
                    ),
                    SizedBox(height: 4),
                    Text("Quantity", style: textTheme.bodySmall),
                  ],
                ),
              if (coin.quantity != null && coin.quantity! > 0)
                if (coin.country != CountryNames.EU)
                  SizedBox(width: AppSizes.p24),
              if (coin.country != CountryNames.EU)
                Column(
                  children: [
                    Text(
                      country != null
                          ? convertDate(
                            coin.type == CoinType.COMMEMORATIVE
                                ? coin.periodStartDate
                                : country.joinedOn,
                          )
                          : '',
                      style: TextStyle(color: colorScheme.onSurfaceVariant),
                    ),
                    SizedBox(height: 4),
                    Text(
                      coin.type == CoinType.COMMEMORATIVE
                          ? "Created"
                          : "Joined",
                      style: textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}
