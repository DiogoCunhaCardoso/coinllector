import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/shared_components/highest_coin_card.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/utils/text_display.dart';
import 'package:flutter/material.dart';

class StatisticsList extends StatelessWidget {
  final bool showByType;
  final Map<CoinType, List<Coin>> coinsByType;
  final Map<CountryNames, List<Coin>> coinsByCountry;
  final Map<CoinType, int> ownedByType;
  final Map<CountryNames, int> ownedByCountry;

  const StatisticsList({
    super.key,
    required this.showByType,
    required this.coinsByType,
    required this.coinsByCountry,
    required this.ownedByType,
    required this.ownedByCountry,
  });

  @override
  Widget build(BuildContext context) {
    final items = showByType ? _buildTypeItems() : _buildCountryItems();

    return ListView.builder(
      itemCount: items.length,
      itemBuilder:
          (context, index) => Padding(
            padding: EdgeInsets.only(
              top: index == 0 ? AppSizes.p24 : AppSizes.p8,
            ),
            child: items[index],
          ),
    );
  }

  List<HighestCoinCard> _buildTypeItems() {
    return coinsByType.entries.map((entry) {
      final type = entry.key;
      final coins = entry.value;
      return HighestCoinCard(
        countryName: showcaseTitle(type.name),
        coinsOwned: ownedByType[type]?.toString() ?? '0',
        totalCoins: coins.length.toString(),
        image: 'assets/value/value-${type.name.toLowerCase()}.png',
      );
    }).toList();
  }

  List<HighestCoinCard> _buildCountryItems() {
    return coinsByCountry.entries.map((entry) {
      final country = entry.key;
      final coins = entry.value;
      return HighestCoinCard(
        countryName: showcaseTitle(country.name),
        coinsOwned: ownedByCountry[country]?.toString() ?? '0',
        totalCoins: coins.length.toString(),
        image: 'assets/country/${country.name.toLowerCase()}-flag.png',
      );
    }).toList();
  }
}
