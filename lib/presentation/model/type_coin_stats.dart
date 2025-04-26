import 'package:coinllector_app/shared/enums/coin_types_enum.dart';

class TypeCoinStats {
  final CoinType type; // From Coin
  final int coinsOwned; // From User Coin
  final int totalCoins; // From Coin

  const TypeCoinStats({
    required this.type,
    required this.coinsOwned,
    required this.totalCoins,
  });

  String get image => 'assets/value/value-${type.name.toLowerCase()}.png';
}
