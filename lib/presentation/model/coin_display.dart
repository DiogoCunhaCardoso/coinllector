import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';

class CoinDisplay {
  final String image;
  final CoinType type;

  CoinDisplay({required this.image, required this.type});

  factory CoinDisplay.fromCoin(Coin coin) {
    return CoinDisplay(image: coin.image, type: coin.type);
  }
}
