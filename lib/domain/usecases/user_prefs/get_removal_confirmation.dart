import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetRemovalConfirmationPrefsUseCase implements UseCase<bool, NoParams> {
  final IUserPreferencesRepository repository;

  GetRemovalConfirmationPrefsUseCase(this.repository);

  @override
  Future<Result<bool>> call(NoParams params) async {
    try {
      final removalConfirmation = await repository.getRemovalConfirmation();
      return Result.success(removalConfirmation);
    } catch (e) {
      return Result.error(
        Exception('Failed to get removal confirmation preference'),
      );
    }
  }
}
