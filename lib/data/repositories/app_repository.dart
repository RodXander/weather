import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/providers/app_geocoding.dart';
import 'package:weather/data/providers/app_preferences.dart';
import 'package:weather/data/providers/app_weather.dart';
import 'package:weather/data/providers/interfaces/app_preferences_abstract.dart';
import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/models/weather/weather.dart';

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
      baseUrl: "https://api.openweathermap.org",
      services: [
        AppWeather.getInstance(),
        AppGeocoding.getInstance(),
      ],
    );
    return _appRepository;
  }

  Future<List<Location>> getGeocoding(String name) async =>
      await _chopperClient!.getService<AppGeocoding>().getGeocoding(name);

  Location getCurrentLocation() {
    return Location(
      name:
          _appPreferences!.getString(AppPreferences.locationName) ?? "Calgary",
      lat: _appPreferences!.getDouble(AppPreferences.lat) ?? 51.04,
      lon: _appPreferences!.getDouble(AppPreferences.lon) ?? 114.07,
    );
  }

  String getWeatherIcon(String id) =>
      _chopperClient!.getService<AppWeather>().getWeatherIcon(id);

  Future<Weather?> getCurrentWeather(double lat, double lon) async {
    try {
      return await _chopperClient!
          .getService<AppWeather>()
          .getCurrentWeather(lat, lon, "metric");
    } catch (_) {
      return null;
    }
  }

  Future<ForecastWeather?> getForecastWeather(double lat, double lon) async {
    try {
      var fullForecast = await _chopperClient!
          .getService<AppWeather>()
          .getForecastWeather(lat, lon, "metric");

      var currentDate = DateUtils.dateOnly(DateTime.now());
      var forecast = <Weather>[];
      for (var weather in fullForecast.list) {
        var weatherDate = DateUtils.dateOnly(
            weather.dt ?? DateTime.fromMillisecondsSinceEpoch(0));

        if (currentDate.isBefore(weatherDate)) {
          forecast.add(weather);
          currentDate = weatherDate;
        }
      }
      return ForecastWeather(list: forecast);
    } catch (_) {
      return null;
    }
  }
}
