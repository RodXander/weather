//ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/weather/weather_converter.dart';
import 'package:weather/models/weather_description/weather_description.dart';
import 'package:weather/models/weather_stats/weather_stats.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @Default([]) List<WeatherDescription> weather,
    @Default(WeatherStats()) WeatherStats main,
    @JsonKey(fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
        DateTime? dt,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> map) => _$WeatherFromJson(map);
}
