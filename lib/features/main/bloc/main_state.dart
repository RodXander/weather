import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/models/weather/weather.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    required MainStateEnum state,
    required Location location,
    Weather? weather,
    ForecastWeather? forecast,
  }) = _MainState;
}

enum MainStateEnum { loading, loaded }
