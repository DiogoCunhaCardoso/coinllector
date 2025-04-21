import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/states_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// Business Rules
/// Gets all Coins by X Type.
/// If User Preferences is set to not want microstates, then filter them.

class GetCoinsByTypeUseCase implements UseCase<List<Coin>, Params<CoinType>> {
  final ICoinRepository repository;
  final IUserPreferencesRepository prefsRepository;

  GetCoinsByTypeUseCase(this.repository, this.prefsRepository);

  @override
  Future<Result<List<Coin>>> call(Params<CoinType> params) async {
    final result = await repository.getAllCoinsByType(params.data);

    switch (result) {
      case Success(value: final coins):
        final showMicroStates = await prefsRepository.getMicroStates();

        if (!showMicroStates) {
          final filtered =
              coins
                  .where(
                    (coin) => !Microstates.countries.contains(coin.country),
                  )
                  .toList();
          return Result.success(filtered);
        }

        return result;

      case Error(error: final e):
        return Result.error(e);
    }
  }
}
