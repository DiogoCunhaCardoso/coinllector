import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class SetCoinMintsPrefsUseCase implements UseCase<void, Params<bool>> {
  final IUserPreferencesRepository repository;

  SetCoinMintsPrefsUseCase(this.repository);

  @override
  Future<Result<void>> call(Params<bool> params) async {
    try {
      await repository.setCoinMints(params.data);
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to set coin mint preference'));
    }
  }
}
