import 'package:shared_preferences/shared_preferences.dart';

class PrefManager {
  String kToken = "token";
  SharedPreferences preferences;

  PrefManager(this.preferences);

  Future<bool> setToken(String value) async =>
      await preferences.setString(kToken, value);

  String getToken() => preferences.getString(kToken) ?? null;

  logout() => preferences.clear();
}
