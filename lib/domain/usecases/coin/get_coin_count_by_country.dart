import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetCountryCoinCountUseCase implements UseCase<int, Params<CountryNames>> {
  final ICoinRepository repository;

  GetCountryCoinCountUseCase(this.repository);

  @override
  Future<Result<int>> call(Params<CountryNames> params) {
    return repository.getCountryTotalCoinCount(params.data);
  }
}
