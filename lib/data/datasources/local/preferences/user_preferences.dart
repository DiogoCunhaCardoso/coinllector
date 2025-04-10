import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._constructor();

  factory UserPreferences() => _instance;

  UserPreferences._constructor();

  SharedPreferences? _prefs;

  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // C O I N _ M I N T S

  bool get coinMints {
    return _prefs?.getBool("coinMints") ?? false;
  }

  set coinMints(bool value) {
    _prefs?.setBool("coinMints", value);
  }

  // M I C R O _ S T A T E S

  bool get microStates {
    return _prefs?.getBool("microStates") ?? true;
  }

  set microStates(bool value) {
    _prefs?.setBool("microStates", value);
  }

  // C O I N _ Q U A L I T Y

  bool get coinQuality {
    return _prefs?.getBool("coinQuality") ?? false;
  }

  set coinQuality(bool value) {
    _prefs?.setBool("coinQuality", value);
  }

  // R E M O V A L _ C O N F I R M A T I O N

  bool get removalConfirmation {
    return _prefs?.getBool("removalConfirmation") ?? true;
  }

  set removalConfirmation(bool value) {
    _prefs?.setBool("removalConfirmation", value);
  }
}
