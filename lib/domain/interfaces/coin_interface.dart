import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class ICoinRepository {
  Future<Result<List<Coin>>> getCoinsByType(CoinType type);

  Future<Result<List<Coin>>> getCoinsByCountry(CountryNames country);

  Future<Result<int>> getCoinCount();

  Future<Result<void>> insertInitialCoins(List<CoinModel> coins);
}
