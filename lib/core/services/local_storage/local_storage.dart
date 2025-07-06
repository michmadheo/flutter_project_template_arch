import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  Future<void> setValue({required String key, required String value}) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(key, value);
  }

  Future<dynamic> getValue({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  Future<void> deleteValue({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<void> clearAllValue() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
