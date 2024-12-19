import 'dart:developer';
import 'package:hurdle_chat/db%20cache/cachehelper.dart';

class UserCache {
  // Set userID value in cache
  static Future<void> setUID(String value) async {
    try {
      await CacheHelper.setString("userID", value);
      log("Successfully set userID in cache: $value");
    } catch (e) {
      print("❌❌ ${e.toString()}");
    }
  }

  // Get userID value from cache
  static Future<String> getUID() async {
    try {
      String? userID = await CacheHelper.getString("userID");
      log("Successfully got userID from cache: $userID");
      return userID ?? "";
    } catch (e) {
      print(e.toString());
      return "";
    }
  }

  // Logout user and clear cache
  static Future<void> logout() async {
    try {
      await CacheHelper.remove("userID");
      log("Successfully cleared userID from cache");
    } catch (e) {
      print(e.toString());
    }
  }
}
