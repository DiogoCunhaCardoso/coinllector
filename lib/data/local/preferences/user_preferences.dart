import 'package:shared_preferences/shared_preferences.dart';

class UserSettings {
  // Keys
  static const String _coinMintsKey = 'coin_mints';
  static const String _showMicrostatesKey = 'show_microstates';
  static const String _coinQualityKey = 'coin_quality';
  static const String _removalConfirmationKey = 'removal_confirmation';

  // Default
  bool coinMints = false;
  bool showMicrostates = true;
  bool coinQuality = false;
  bool removalConfirmation = false;

  Future<void> saveSettings() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_coinMintsKey, coinMints);
    await prefs.setBool(_showMicrostatesKey, showMicrostates);
    await prefs.setBool(_coinQualityKey, coinQuality);
    await prefs.setBool(_removalConfirmationKey, removalConfirmation);
  }

  // Load settings from SharedPreferences
  Future<void> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    coinMints = prefs.getBool(_coinMintsKey) ?? false;
    showMicrostates = prefs.getBool(_showMicrostatesKey) ?? true;
    coinQuality = prefs.getBool(_coinQualityKey) ?? false;
    removalConfirmation = prefs.getBool(_removalConfirmationKey) ?? true;
  }

  // GET VALUES ------------------------------------------------

  Future<bool> getMints() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_coinMintsKey) ?? false;
  }

  Future<bool> getMicrostates() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_showMicrostatesKey) ?? true;
  }

  Future<bool> getCoinQuality() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_coinQualityKey) ?? false;
  }

  Future<bool> getRemovalConfirmation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_removalConfirmationKey) ?? true;
  }

  // TOGGLE VALUES -----------------------------------------------

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
