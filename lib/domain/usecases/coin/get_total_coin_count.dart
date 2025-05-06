import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:coinllector_app/shared/enums/states_enum.dart';

// BUSINESS RULES: -------------------------------------------------------------
/// 1. Gets all coins count.
/// 2. If User Preferences for Microstates is to exclude them, then filter them.

class GetTotalCoinCountUseCase implements UseCase<int, NoParams> {
  final ICoinRepository repository;
  final IUserPreferencesRepository _prefsRepository;

  GetTotalCoinCountUseCase(this.repository, this._prefsRepository);

  @override
  Future<Result<int>> call(NoParams _) async {
    final showMicrostates = await _prefsRepository.getMicroStates();

    final excludeCountries = !showMicrostates ? Microstates.countries : null;

    return await repository.getTotalCoinCount(
      excludeCountries: excludeCountries,
    );
  }
}
