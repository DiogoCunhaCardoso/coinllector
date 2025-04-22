import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetUserCoinCountByCountryUseCase
    implements UseCase<int, Params<CountryNames>> {
  final IUserCoinRepository repository;

  GetUserCoinCountByCountryUseCase(this.repository);

  @override
  Future<Result<int>> call(Params<CountryNames> params) {
    return repository.getUserCoinCountByCountry(params.data);
  }
}
