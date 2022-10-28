import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/data/providers/interfaces/app_preferences_abstract.dart';

/// Implementation of [AppPreferencesAbstract] which is an abstract key-value pair storing mechanism.
///
/// It functions as singleton and doesn't allow to create an instance directly since it uses an asynchronous dependency to operate.
/// Therefore it uses [getInstance] to provide access to the object.
class AppPreferences implements AppPreferencesAbstract {
  static const lat = 'lat';
  static const lon = 'lon';

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

  /// Gets the value of the appropriate `double` given [key].
  ///
  /// Returns null if [key] doesn't exists.
  @override
  double? getDouble(String key) => _sharedPreferences!.getDouble(key);

  /// Sets or updates the value of the appropriate `double` given [key].
  ///
  /// Returns a [Future<bool>] of whether or not the operation succeeded.
  @override
  Future<bool> setDouble(String key, double value) async =>
      await _sharedPreferences!.setDouble(key, value);
}
