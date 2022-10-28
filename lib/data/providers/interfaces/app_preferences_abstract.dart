/// Abstract class to denote a data provider focused on handling key-value pair data.
///
/// Similar to Android's SharedPreferences or iOS' NSUserDefaults.
abstract class AppPreferencesAbstract {
  /// Removes the specified key from the preferences system.
  ///
  /// Returns whether or not the deletion was successful.
  Future<bool> removeKey(String key);

  /// Gets whether the specified key exist in the preferences system.
  bool containsKey(String key);

  /// Gets the value of the appropriate `String` given [key].
  ///
  /// Returns null if [key] doesn't exists.
  String? getString(String key);

  /// Sets or updates the value of the appropriate `String` given [key].
  ///
  /// Returns a [Future<bool>] of whether or not the operation succeeded.
  Future<bool> setString(String key, String value);

  /// Gets the value of the appropriate `double` given [key].
  ///
  /// Returns null if [key] doesn't exists.
  double? getDouble(String key);

  /// Sets or updates the value of the appropriate `double` given [key].
  ///
  /// Returns a [Future<bool>] of whether or not the operation succeeded.
  Future<bool> setDouble(String key, double value);
}
