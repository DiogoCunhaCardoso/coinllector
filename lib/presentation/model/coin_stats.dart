import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';

class CoinStats {
  final String label;
  final String image;
  final int coinsOwned;
  final int totalCoins;
  final double collectionPercentage;

  CoinStats({
    required this.label,
    required this.image,
    required this.coinsOwned,
    required this.totalCoins,
    required this.collectionPercentage,
  });

  factory CoinStats.fromCountry(
    Country country,
    int ownedCount,
    int totalCount,
  ) {
    return CoinStats(
      label: country.name.name,
      image: country.flagImage,
      coinsOwned: ownedCount,
      totalCoins: totalCount,
      collectionPercentage: totalCount > 0 ? ownedCount / totalCount : 0.0,
    );
  }

  factory CoinStats.fromType(CoinType type, int ownedCount, int totalCount) {
    return CoinStats(
      label: type.name,
      image: 'assets/value/value-${type.name.toLowerCase()}.png',
      coinsOwned: ownedCount,
      totalCoins: totalCount,
      collectionPercentage: totalCount > 0 ? ownedCount / totalCount : 0.0,
    );
  }
}
