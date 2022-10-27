import 'package:get_it/get_it.dart';
import 'package:weather/data/providers/interfaces/app_preferences_abstract.dart';

/// Main app's repository, dealing with all information that is app-wide
/// and that it doesn't belong to any specific domain handled by another repository.
class AppRepository {
  static final AppRepository _appRepository = AppRepository._internal();
  static AppPreferencesAbstract? _appPreferences;

  AppRepository._internal();

  static Future<AppRepository> getInstance() async {
    _appPreferences ??= GetIt.I();
    return _appRepository;
  }

  /*/// Gets the country selected to operate on the app.
  /// It returns null if no country exists.
  Country? get country => _appPreferences!.containsKey(AppPreferences.country)
      ? Country(_appPreferences!.getString(AppPreferences.country)!)
      : null;

  /// Sets the country selected to operate on the app.
  /// If null it clears whatever has been previously stored.
  /// Internally, it is an asynchronous operation that may fail silently.
  set country(Country? country) => country == null
      ? _appPreferences!.removeKey(AppPreferences.country)
      : _appPreferences!.setString(AppPreferences.country, country.countryCode);*/
}
