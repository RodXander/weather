import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/providers/app_weather.dart';
import 'package:weather/data/providers/interfaces/app_preferences_abstract.dart';

/// Main app's repository, dealing with all information that is app-wide
/// and that it doesn't belong to any specific domain handled by another repository.
class AppRepository {
  static final AppRepository _appRepository = AppRepository._internal();
  static AppPreferencesAbstract? _appPreferences;
  static ChopperClient? _chopperClient;

  AppRepository._internal();

  static Future<AppRepository> getInstance() async {
    _appPreferences ??= GetIt.I();
    _chopperClient ??= ChopperClient(
      baseUrl: "https://api.openweathermap.org/data/2.5",
      services: [
        AppWeather.getInstance(),
      ],
    );
    return _appRepository;
  }

  Future<int> loadWeatherData() async {
    var s = await _chopperClient!
        .getService<AppWeather>()
        .getCurrentWeather(44.34, 10.99, "metric");
    var d = await _chopperClient!
        .getService<AppWeather>()
        .getForecastWeather(44.34, 10.99, "metric");
    return 4;
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
