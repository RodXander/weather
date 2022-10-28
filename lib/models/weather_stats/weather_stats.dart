import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_stats.freezed.dart';
part 'weather_stats.g.dart';

@freezed
class WeatherStats with _$WeatherStats {
  const factory WeatherStats({
    @Default(0) double temp,
    @Default(0) double feelsLike,
    @Default(0) double tempMin,
    @Default(0) double tempMax,
    @Default(0) double pressure,
    @Default(0) double humidity,
    @Default(0) double seaLevel,
    @Default(0) double grndLevel,
  }) = _WeatherStats;

  factory WeatherStats.fromJson(Map<String, dynamic> map) =>
      _$WeatherStatsFromJson(map);
}
