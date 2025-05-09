abstract class IUserPreferencesRepository {
  // Coin Mint Preferences
  Future<bool> getCoinMints();
  Future<void> setCoinMints(bool value);

  // Micro States Preferences
  Future<bool> getMicroStates();
  Future<void> setMicroStates(bool value);

  // Coin Quality Preferences
  Future<bool> getCoinQuality();
  Future<void> setCoinQuality(bool value);

  // Removal Confirmation Preferences
  Future<bool> getRemovalConfirmation();
  Future<void> setRemovalConfirmation(bool value);

  // Profile Picture Preferences
  Future<String?> getUserProfileImage();
  Future<void> saveUserProfileImage(String imagePath);

  // Username Preferences
  Future<String?> getUsername();
  Future<void> setUsername(String value);
}
