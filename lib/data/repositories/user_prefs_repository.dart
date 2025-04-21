import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesRepositoryImpl implements IUserPreferencesRepository {
  final SharedPreferences _sharedPreferences;

  UserPreferencesRepositoryImpl(this._sharedPreferences);

  // Coin Mints
  @override
  Future<bool> getCoinMints() async {
    return _sharedPreferences.getBool("coinMints") ?? false;
  }

  @override
  Future<void> setCoinMints(bool value) async {
    await _sharedPreferences.setBool("coinMints", value);
  }

  // Micro States
  @override
  Future<bool> getMicroStates() async {
    return _sharedPreferences.getBool("microStates") ?? true;
  }

  @override
  Future<void> setMicroStates(bool value) async {
    await _sharedPreferences.setBool("microStates", value);
  }

  // Coin Quality
  @override
  Future<bool> getCoinQuality() async {
    return _sharedPreferences.getBool("coinQuality") ?? false;
  }

  @override
  Future<void> setCoinQuality(bool value) async {
    await _sharedPreferences.setBool("coinQuality", value);
  }

  // Removal Confirmation
  @override
  Future<bool> getRemovalConfirmation() async {
    return _sharedPreferences.getBool("removalConfirmation") ?? true;
  }

  @override
  Future<void> setRemovalConfirmation(bool value) async {
    await _sharedPreferences.setBool("removalConfirmation", value);
  }

  // Profile Picture
  @override
  Future<String?> getUserProfileImage() async {
    return _sharedPreferences.getString("user_profile_image");
  }

  @override
  Future<void> saveUserProfileImage(String imagePath) async {
    await _sharedPreferences.setString("user_profile_image", imagePath);
  }
}
