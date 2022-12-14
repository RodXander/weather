import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:weather/data/providers/interfaces/app_weather_abstract.dart';
import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/weather/weather.dart';

part 'app_weather.chopper.dart';

@ChopperApi()
abstract class AppWeather extends ChopperService implements AppWeatherAbstract {
  static const appId = "d37af98b5012e1570b59393e3943afd8";

  static AppWeather getInstance() => _$AppWeather();

  @override
  Future<Weather> getCurrentWeather(
    double lat,
    double lon,
    String units,
  ) async =>
      Weather.fromJson(
          json.decode((await _getCurrentWeather(lat, lon, units)).body ?? ""));

  @Get(path: "/data/2.5/weather?appid=$appId")
  Future<Response<String>> _getCurrentWeather(
    @Query() double lat,
    @Query() double lon,
    @Query() String units,
  );

  @override
  Future<ForecastWeather> getForecastWeather(
    double lat,
    double lon,
    String units,
  ) async =>
      ForecastWeather.fromJson(
          json.decode((await _getForecastWeather(lat, lon, units)).body ?? ""));

  @Get(path: "/data/2.5/forecast?appid=$appId")
  Future<Response<String>> _getForecastWeather(
    @Query() double lat,
    @Query() double lon,
    @Query() String units,
  );

  @override
  String getWeatherIcon(String id) =>
      "https://openweathermap.org/img/wn/$id@2x.png";
}
