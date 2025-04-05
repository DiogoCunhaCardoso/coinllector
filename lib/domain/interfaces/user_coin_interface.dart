import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class IUserCoinRepository {
  Future<Result<void>> addCoin(int coinId);

  Future<Result<void>> removeCoin(int coinId);

  Future<Result<bool>> userOwnsCoin(int coinId);

  Future<Result<List<int>>> getOwnedCoins();

  Future<Result<int>> getOwnedCoinCount();

  Future<Result<Map<CoinType, int>>> getOwnedCoinsCountByType();

  Future<Result<Map<CountryNames, int>>> getOwnedCoinsCountByCountry();
}
