import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetCoinQualityPrefsUseCase implements UseCase<bool, NoParams> {
  final IUserPreferencesRepository repository;

  GetCoinQualityPrefsUseCase(this.repository);

  @override
  Future<Result<bool>> call(NoParams params) async {
    try {
      final coinQuality = await repository.getCoinQuality();
      return Result.success(coinQuality);
    } catch (e) {
      return Result.error(Exception('Failed to get coin quality preference'));
    }
  }
}
