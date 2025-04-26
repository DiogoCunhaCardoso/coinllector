import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/entities/country.dart';

class CoinDisplay {
  final String image;
  final String label;

  CoinDisplay({required this.image, required this.label});

  factory CoinDisplay.fromCoin(Coin coin) {
    return CoinDisplay(image: coin.image, label: coin.type.name);
  }

  factory CoinDisplay.fromCountry(Country country) {
    return CoinDisplay(image: country.flagImage, label: country.name.name);
  }
}
