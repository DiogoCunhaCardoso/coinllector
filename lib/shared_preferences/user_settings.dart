import 'package:shared_preferences/shared_preferences.dart';

class UserSettings {
  // Keys for SharedPreferences
  static const String _coinMints = 'coin_mints';
  static const String _showMicrostatesKey = 'show_microstates';
  static const String _coinQualityKey = 'coin_quality';
  static const String _removalConfirmationKey = 'removal_confirmation';

  // Default values
  bool coinMints = false;
  bool showMicrostates = true;
  bool coinQuality = false;
  bool removalConfirmation = false;

  // Load settings from SharedPreferences
  Future<void> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    coinMints = prefs.getBool(_coinMints) ?? false;
    showMicrostates = prefs.getBool(_showMicrostatesKey) ?? true;
    coinQuality = prefs.getBool(_coinQualityKey) ?? false;
    removalConfirmation = prefs.getBool(_removalConfirmationKey) ?? false;
  }

  // Save settings to SharedPreferences
  Future<void> saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_coinMints, coinMints);
    await prefs.setBool(_showMicrostatesKey, showMicrostates);
    await prefs.setBool(_coinQualityKey, coinQuality);
    await prefs.setBool(_removalConfirmationKey, removalConfirmation);
  }

  // Toggle methods for each setting

  Future<void> toggleCoinMints() async {
    coinMints = !coinMints;
    await saveSettings();
  }

  Future<void> toggleShowMicrostates() async {
    showMicrostates = !showMicrostates;
    await saveSettings();
  }

  Future<void> toggleCoinQuality() async {
    coinQuality = !coinQuality;
    await saveSettings();
  }

  Future<void> toggleRemovalConfirmation() async {
    removalConfirmation = !removalConfirmation;
    await saveSettings();
  }
}
