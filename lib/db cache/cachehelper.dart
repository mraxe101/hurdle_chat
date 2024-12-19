import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  // Get the SharedPreferences instance
  static Future<SharedPreferences> _getInstance() async {
    return await SharedPreferences.getInstance();
  }

  // Set a string value in SharedPreferences
  static Future<void> setString(String key, String value) async {
    final SharedPreferences prefs = await _getInstance();
    await prefs.setString(key, value);
  }

  // Get a string value from SharedPreferences
  static Future<String?> getString(String key) async {
    final SharedPreferences prefs = await _getInstance();
    return prefs.getString(key);
  }

  // Remove a value from SharedPreferences
  static Future<void> remove(String key) async {
    final SharedPreferences prefs = await _getInstance();
    await prefs.remove(key);
  }
}
