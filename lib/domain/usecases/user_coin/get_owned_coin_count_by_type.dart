import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/states_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// BUSINESS RULES: -------------------------------------------------------------
/// 1. Gets owned coins count by type.
/// 2. If User Preferences for Microstates is to exclude them, then filter them.

class GetUserCoinCountByTypeUseCase implements UseCase<int, Params<CoinType>> {
  final IUserCoinRepository repository;
  final IUserPreferencesRepository _prefsRepository;

  GetUserCoinCountByTypeUseCase(this.repository, this._prefsRepository);

  @override
  Future<Result<int>> call(Params<CoinType> params) async {
    final showMicrostates = await _prefsRepository.getMicroStates();

    final excludeCountries = !showMicrostates ? Microstates.countries : null;

    return repository.getUserCoinCountByType(
      params.data,
      excludeCountries: excludeCountries,
    );
  }
}
