import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class SetUserProfileImagePrefsUseCase implements UseCase<void, Params<String>> {
  final IUserPreferencesRepository repository;

  SetUserProfileImagePrefsUseCase(this.repository);

  @override
  Future<Result<void>> call(Params<String> params) async {
    try {
      await repository.saveUserProfileImage(params.data);
      return Result.success(null);
    } catch (e) {
      return Result.error(Exception('Failed to save profile image'));
    }
  }
}
