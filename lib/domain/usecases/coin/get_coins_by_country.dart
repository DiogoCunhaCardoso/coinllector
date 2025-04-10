import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetCoinsByCountryUseCase
    implements UseCase<List<Coin>, Params<CountryNames>> {
  final ICoinRepository repository;

  GetCoinsByCountryUseCase(this.repository);

  @override
  Future<Result<List<Coin>>> call(Params<CountryNames> params) {
    return repository.getAllCoinsByCountry(params.data);
  }
}
