import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/states_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// BUSINESS RULES: -------------------------------------------------------------
/// 1. Gets owned coins count group by type in a map for statistics.
/// 2. If User Preferences for Microstates is to exclude them, then filter them.

class GetOwnedCoinsByTypeMapUseCase
    implements UseCase<Map<CoinType, int>, NoParams> {
  final IUserCoinRepository repository;
  final IUserPreferencesRepository _prefsRepository;

  GetOwnedCoinsByTypeMapUseCase(this.repository, this._prefsRepository);

  @override
  Future<Result<Map<CoinType, int>>> call(NoParams _) async {
    final showMicrostates = await _prefsRepository.getMicroStates();

    final excludeCountries = !showMicrostates ? Microstates.countries : null;

    return await repository.getUserCoinsByType(
      excludeCountries: excludeCountries,
    );
  }
}
