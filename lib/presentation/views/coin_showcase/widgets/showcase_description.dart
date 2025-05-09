import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';

class ShowcaseDescription extends StatelessWidget {
  final Coin coin;

  const ShowcaseDescription({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final countryName = coin.country;
    final formattedCountryName =
        countryName == CountryNames.EU
            ? countryName.name
            : capitalizeFst(countryName.name);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(formattedCountryName, style: textTheme.titleMedium),
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
