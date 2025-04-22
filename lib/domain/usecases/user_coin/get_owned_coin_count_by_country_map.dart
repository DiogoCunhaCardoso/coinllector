import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetOwnedCoinsByCountryMapUseCase
    implements UseCase<Map<CountryNames, int>, NoParams> {
  final IUserCoinRepository repository;

  GetOwnedCoinsByCountryMapUseCase(this.repository);

  @override
  Future<Result<Map<CountryNames, int>>> call(NoParams _) async {
    return await repository.getUserCoinsByCountry();
  }
}
