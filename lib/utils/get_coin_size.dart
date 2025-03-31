import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/ui/coins/data/value_data.dart';

double getItemSizeForCoinsView(dynamic item) {
  if (item is ValueData) {
    const coinSizes = {
      CoinType.COMMEMORATIVE: 92.0,
      CoinType.TWO_EURO: 92.0,
      CoinType.ONE_EURO: 83.0,
      CoinType.FIFTY_CENT: 88.0,
      CoinType.TWENTY_CENT: 80.0,
      CoinType.TEN_CENT: 71.0,
      CoinType.FIVE_CENT: 76.0,
      CoinType.TWO_CENT: 67.0,
      CoinType.ONE_CENT: 58.0,
    };
    return coinSizes[item.type] ?? 92.0;
  } else if (item is Country) {
    return 92.0; // Default size for countries
  }
  return 92.0; // Fallback size
}

double getItemSizeForFilterView(CoinType type) {
  const coinSizes = {
    CoinType.COMMEMORATIVE: 92.0,
    CoinType.TWO_EURO: 92.0,
    CoinType.ONE_EURO: 83.0,
    CoinType.FIFTY_CENT: 88.0,
    CoinType.TWENTY_CENT: 80.0,
    CoinType.TEN_CENT: 71.0,
    CoinType.FIVE_CENT: 76.0,
    CoinType.TWO_CENT: 67.0,
    CoinType.ONE_CENT: 58.0,
  };
  return coinSizes[type] ?? 92.0;
}
