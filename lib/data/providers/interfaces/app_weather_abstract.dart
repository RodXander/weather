import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/weather/weather.dart';

abstract class AppWeatherAbstract {
  Future<Weather> getCurrentWeather(int lat, int long);
  Future<ForecastWeather> getForecastWeather(int lat, int long);
}
