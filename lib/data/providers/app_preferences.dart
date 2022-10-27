import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/data/providers/interfaces/app_preferences_abstract.dart';

/// Implementation of [AppPreferencesAbstract] which is an abstract key-value pair storing mechanism.
///
/// It functions as singleton and doesn't allow to create an instance directly since it uses an asynchronous dependency to operate.
/// Therefore it uses [getInstance] to provide access to the object.
class AppPreferences implements AppPreferencesAbstract {
  static const location = 'location';

  static final _preferences = AppPreferences._internal();
  static SharedPreferences? _sharedPreferences;

  /// Private constructor to prevent users from creating an object of [AppPreferencesAbstract] directly.
  AppPreferences._internal();

  /// Only way to get an instance of [AppPreferencesAbstract].
  ///
  /// It returns a singleton.
  static Future<AppPreferences> getInstance() async {
    // Only get the SharedPreferences object if it hasn't being fetch before
    // This way repetitive calls to getInstance wont have to wait for it.
    _sharedPreferences ??= await SharedPreferences.getInstance();
    return _preferences;
  }

  /// Removes the specified key from the preferences system.
  ///
  /// Returns whether or not the deletion was successful.
  @override
  Future<bool> removeKey(String key) => _sharedPreferences!.remove(key);

  /// Gets whether the specified key exist in the preferences system.
  @override
  bool containsKey(String key) => _sharedPreferences!.containsKey(key);

  /// Gets the value of the appropriate `bool` given [key].
  ///
  /// Returns null if [key] doesn't exists.
  @override
  bool? getBool(String key) => _sharedPreferences!.getBool(key);

  /// Gets the value of the appropriate `int` given [key].
  ///
  /// Returns null if [key] doesn't exists.
  @override
  int? getInt(String key) => _sharedPreferences!.getInt(key);

  /// Gets the value of the appropriate `String` given [key].
  ///
  /// Returns null if [key] doesn't exists.
  @override
  String? getString(String key) => _sharedPreferences!.getString(key);

  /// Sets or updates the value of the appropriate `bool` given [key].
  ///
  /// Returns a [Future<bool>] of whether or not the operation succeeded.
  @override
  Future<bool> setBool(String key, bool value) async =>
      await _sharedPreferences!.setBool(key, value);

  /// Sets or updates the value of the appropriate `int` given [key].
  ///
  /// Returns a [Future<bool>] of whether or not the operation succeeded.
  @override
  Future<bool> setInt(String key, int value) async =>
      await _sharedPreferences!.setInt(key, value);

  /// Sets or updates the value of the appropriate `String` given [key].
  ///
  /// Returns a [Future<bool>] of whether or not the operation succeeded.
  @override
  Future<bool> setString(String key, String value) async =>
      await _sharedPreferences!.setString(key, value);
}
