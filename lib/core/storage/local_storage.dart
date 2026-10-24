import 'dart:convert';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  LocalStorage(this._preferences);

  final SharedPreferences _preferences;

  Future<bool> setString(String key, String value) {
    return _preferences.setString(key, value);
  }

  String? getString(String key) {
    return _preferences.getString(key);
  }

  Future<bool> setBool(String key, bool value) {
    return _preferences.setBool(key, value);
  }

  bool getBool(String key, {bool defaultValue = false}) {
    return _preferences.getBool(key) ?? defaultValue;
  }

  Future<bool> setInt(String key, int value) {
    return _preferences.setInt(key, value);
  }

  int getInt(String key, {int defaultValue = 0}) {
    return _preferences.getInt(key) ?? defaultValue;
  }

  Future<bool> remove(String key) {
    return _preferences.remove(key);
  }

  Future<bool> clear() {
    return _preferences.clear();
  }

  /// JSON Helpers

  Future<bool> saveJson(String key, Map value) {
    return _preferences.setString(
      key,
      jsonEncode(value),
    );
  }

  Map<String, dynamic>? getJson(String key) {
    final value = _preferences.getString(key);

    if (value == null) return null;

    return jsonDecode(value);
  }

  List<dynamic> getJsonList(String key) {
    final value = _preferences.getString(key);

    if (value == null) return [];

    return jsonDecode(value);
  }

  void saveStringList(String key, List<String> value) {
    _preferences.setStringList(key, value);
    log('Local Storage ::: ${value.last} saved');
  }

  List<String> getStringList(String key) {
    try {
      return _preferences.getStringList(key) ?? [];
    } catch (e) {
      return [];
    }
  }
}