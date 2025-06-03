import 'package:coinllector_app/shared/enums/coin_types_enum.dart';

double getItemSizeForCoinsView(dynamic item) {
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
  return coinSizes[item] ?? 92.0;
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
