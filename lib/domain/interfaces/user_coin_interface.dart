import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

abstract class IUserCoinRepository {
  Future<void> addCoin(int coinId);
  Future<void> removeCoin(int coinId);
  Future<bool> userOwnsCoin(int coinId);
  Future<List<int>> getOwnedCoins();
  Future<int> getOwnedCoinCount();
  Future<Map<CoinType, int>> getOwnedCoinsCountByType();
  Future<Map<CountryNames, int>> getOwnedCoinsCountByCountry();
}
