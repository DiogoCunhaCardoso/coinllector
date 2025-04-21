import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetUserProfileImagePrefsUseCase implements UseCase<String?, NoParams> {
  final IUserPreferencesRepository repository;

  GetUserProfileImagePrefsUseCase(this.repository);

  @override
  Future<Result<String?>> call(NoParams params) async {
    try {
      final imagePath = await repository.getUserProfileImage();
      return Result.success(imagePath);
    } catch (e) {
      return Result.error(Exception('Failed to get profile image'));
    }
  }
}
