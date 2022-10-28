import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/repositories/app_repository.dart';
import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/location/location.dart';
import 'package:weather/models/weather/weather.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  factory MainState({
    required MainStateEnum state,
    required Location location,
    @Default(true) bool ascForecast,
    Weather? weather,
    ForecastWeather? forecast,
  }) = _MainState;

  MainState._();

  String weatherIconUrl(String id) =>
      GetIt.I<AppRepository>().getWeatherIcon(id);
}

enum MainStateEnum { loading, loaded }
