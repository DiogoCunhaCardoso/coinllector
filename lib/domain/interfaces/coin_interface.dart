import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

abstract class ICoinRepository {
  Future<List<Coin>> getCoinsByType(CoinType type);
  Future<List<Coin>> getCoinsByCountry(CountryNames country);
  Future<int> getCoinCount();
  Future<void> insertInitialCoins(List<CoinModel> coins);
}
