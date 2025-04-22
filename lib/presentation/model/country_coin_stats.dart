import 'package:coinllector_app/shared/enums/country_names_enum.dart';

class CountryCoinStats {
  final CountryNames name; // From Country
  final int coinsOwned; //    From User Coin
  final int totalCoins; //    From Coin
  final String flagImage; //  From Country

  const CountryCoinStats({
    required this.name,
    required this.coinsOwned,
    required this.totalCoins,
    required this.flagImage,
  });
}
