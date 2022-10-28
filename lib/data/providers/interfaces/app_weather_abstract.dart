import 'package:weather/models/coordinate/coordinate.dart';
import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/weather/weather.dart';

abstract class AppWeatherAbstract {
  Future<Weather> getCurrentWeather(
    Coordinate coordinates,
    String units,
  );

  Future<ForecastWeather> getForecastWeather(
    Coordinate coordinates,
    String units,
  );
}
