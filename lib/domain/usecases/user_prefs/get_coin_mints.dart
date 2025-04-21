import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetCoinMintsPrefsUseCase implements UseCase<bool, NoParams> {
  final IUserPreferencesRepository repository;

  GetCoinMintsPrefsUseCase(this.repository);

  @override
  Future<Result<bool>> call(NoParams params) async {
    try {
      final coinMints = await repository.getCoinMints();
      return Result.success(coinMints);
    } catch (e) {
      return Result.error(Exception('Failed to get coin mint preference'));
    }
  }
}
