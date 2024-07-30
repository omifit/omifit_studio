import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_html/html.dart' as html;

class SharedPreferenceService {
  static late final SharedPreferences _prefsInstance;

  // Ensure SharedPreferences is initialized
  static Future<void> init() async {
    _prefsInstance = await SharedPreferences.getInstance();
  }

  // Bool
  static bool? getBool(String key) => _prefsInstance.getBool(key);
  static Future<bool> setBool(String key, bool value) async =>
      _prefsInstance.setBool(key, value);

  // Int
  static int? getInt(String key) => _prefsInstance.getInt(key);
  static Future<bool> setInt(String key, int value) async =>
      _prefsInstance.setInt(key, value);

  // String
  static String? getString(String key) => _prefsInstance.getString(key);
  static Future<bool> setString(String key, String value) async =>
      _prefsInstance.setString(key, value);

  // Double
  static Future<bool> setDouble(String key, double value) async =>
      _prefsInstance.setDouble(key, value);
  static double? getDouble(String key) => _prefsInstance.getDouble(key);

  // Remove
  static Future<bool> remove(String key) async => _prefsInstance.remove(key);

  // Clear all
  static Future<bool> clearAll() async => _prefsInstance.clear();

  // Store token and cookies based on devices
  static Future<void> setToken(String token) async {
    if (kIsWeb) {
      html.window.localStorage['token'] = token;
      // html.document.cookie = "token=$token";
    }
    await setString('token', token);
  }

  // Get token and cookies based on devices
  static String? getToken() {
    if (kIsWeb) {
      return html.window.localStorage['token'];
      // final cookies = html.document.cookie;
      // if (cookies != null && cookies.isNotEmpty) {
      //   try {
      //     return cookies
      //         .split(';')
      //         .firstWhere((element) => element.trim().startsWith('token='),
      //             orElse: () => '')
      //         .split('=')
      //         .last
      //         .trim();
      //   } catch (e) {
      //     print('Error retrieving token from cookies: $e');
      //     return null;
      //   }
      // }
    } else {
      return getString('token');
    }
  }
}
