import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:coinllector_app/shared/enums/states_enum.dart';

// BUSINESS RULES: ---------------------------------------------------
// 1. Gets all coins count
// 2. If User Preferences for Microstates is to exclude them, then subtract their coin counts
class GetTotalCoinCountUseCase implements UseCase<int, NoParams> {
  final ICoinRepository repository;
  final IUserPreferencesRepository _prefsRepository;

  GetTotalCoinCountUseCase(this.repository, this._prefsRepository);

  @override
  Future<Result<int>> call(NoParams _) async {
    final result = await repository.getTotalCoinCount();

    switch (result) {
      case Success(value: final totalCount):
        final showMicrostates = await _prefsRepository.getMicroStates();

        // remove count of microstates (false)
        if (!showMicrostates) {
          int microstatesCount = 0;

          // Iterate through all microstates and get their coin counts
          for (final microstate in Microstates.countries) {
            final countResult = await repository.getCountryTotalCoinCount(
              microstate,
            );

            switch (countResult) {
              case Success(value: final count):
                microstatesCount += count;
              case Error():
                continue;
            }
          }

          // Return total subtracted
          return Result.success(totalCount - microstatesCount);
        }

        // Otherwise return total unmodified
        return result;

      case Error(error: final e):
        return Result.error(e);
    }
  }
}
