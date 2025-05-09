// get_username.dart
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetUsernamePrefsUseCase implements UseCase<String?, NoParams> {
  final IUserPreferencesRepository repository;

  GetUsernamePrefsUseCase(this.repository);

  @override
  Future<Result<String?>> call(NoParams params) async {
    try {
      final username = await repository.getUsername();
      return Result.success(username);
    } catch (e) {
      return Result.error(Exception('Failed to get username'));
    }
  }
}
