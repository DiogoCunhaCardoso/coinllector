import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/states_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

/// Parameters for GetTypeCoinCountUseCase
class TypeCoinCountParams {
  final CoinType type;
  final String? startDate;

  TypeCoinCountParams(this.type, {this.startDate});
}

/// Count Coins By Type
/// Remove Microstates If On SharedPreferences
class GetTypeCoinCountUseCase implements UseCase<int, TypeCoinCountParams> {
  final ICoinRepository repository;
  final IUserPreferencesRepository prefsRepository;

  GetTypeCoinCountUseCase(this.repository, this.prefsRepository);

  @override
  Future<Result<int>> call(TypeCoinCountParams params) async {
    final showMicroStates = await prefsRepository.getMicroStates();

    // Remove Microstates
    if (!showMicroStates) {
      final result = await repository.getAllCoinsByType(
        params.type,
        startDate: params.startDate,
      );

      switch (result) {
        case Success(value: final coins):
          final filtered =
              coins
                  .where(
                    (coin) => !Microstates.countries.contains(coin.country),
                  )
                  .toList();
          return Result.success(filtered.length);

        case Error(error: final e):
          return Result.error(e);
      }
    }

    // If microstates are enabled, return full count
    return repository.getTypeTotalCoinCount(
      params.type,
      startDate: params.startDate,
    );
  }
}
