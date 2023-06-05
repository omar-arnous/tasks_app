import 'package:shared_preferences/shared_preferences.dart';

class CacheStorage {
  static late SharedPreferences _prefs;
  static const _key = 'mode';

// call this method from iniState() function of mainApp().
  static Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }

  static Future<bool> setMode(bool isDark) async =>
      await _prefs.setBool(_key, isDark);

  static bool getMode() => _prefs.getBool(_key) ?? false;
}
