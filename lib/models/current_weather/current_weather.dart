import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/weather/weather.dart';
import 'package:weather/models/weather_stats/weather_stats.dart';

part 'current_weather.freezed.dart';

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    @Default(Weather()) Weather weather,
    @Default(WeatherStats()) WeatherStats weatherStats,
  }) = _CurrentWeather;
}
