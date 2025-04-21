import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetMicroStatesPrefsUseCase implements UseCase<bool, NoParams> {
  final IUserPreferencesRepository repository;

  GetMicroStatesPrefsUseCase(this.repository);

  @override
  Future<Result<bool>> call(NoParams params) async {
    try {
      final microStates = await repository.getMicroStates();
      return Result.success(microStates);
    } catch (e) {
      return Result.error(Exception('Failed to get micro states preference'));
    }
  }
}
