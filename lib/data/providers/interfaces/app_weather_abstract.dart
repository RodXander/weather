import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/weather/weather.dart';

abstract class AppWeatherAbstract {
  Future<Weather> getCurrentWeather(double lat, double long);
  Future<ForecastWeather> getForecastWeather(double lat, double long);
}
