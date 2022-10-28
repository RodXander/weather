import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_description.freezed.dart';

@freezed
class WeatherDescription with _$WeatherDescription {
  const factory WeatherDescription({
    @Default(0) int id,
    @Default("") String main,
    @Default("") String description,
    @Default("") String icon,
  }) = _WeatherDescription;
}
