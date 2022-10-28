import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/weather/weather.dart';

part 'forecast_weather.freezed.dart';

@freezed
class ForecastWeather with _$ForecastWeather {
  const factory ForecastWeather({
    @Default([]) List<Weather> list,
  }) = _ForecastWeather;
}
