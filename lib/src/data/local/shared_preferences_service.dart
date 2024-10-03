import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  static final SharedPreferencesService _instance = SharedPreferencesService._internal();
  SharedPreferences? _preferences;

  factory SharedPreferencesService() {
    return _instance;
  }

  SharedPreferencesService._internal();

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  Future<List<String>> addToList(String key, String value) async {
    final list = _preferences?.getStringList(key) ?? [];
    list.add(value.toLowerCase());
    await _preferences?.setStringList(key, list);
    return list;
  }

  Future<List<String>> removeFromList(String key, String value) async {
    final list = _preferences?.getStringList(key) ?? [];
    list.remove(value.toLowerCase());
    await _preferences?.setStringList(key, list);
    return list;
  }

  Future<List<String>> getList(String key) async {
    return _preferences?.getStringList(key) ?? [];
  }
}
