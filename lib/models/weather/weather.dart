import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/weather_description/weather_description.dart';
import 'package:weather/models/weather_stats/weather_stats.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @Default([]) List<WeatherDescription> weather,
    @Default(WeatherStats()) WeatherStats main,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> map) => _$WeatherFromJson(map);
}
