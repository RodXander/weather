import 'package:chopper/chopper.dart';
import 'package:weather/data/providers/interfaces/app_weather_abstract.dart';
import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/weather/weather.dart';

part 'app_weather.chopper.dart';

@ChopperApi()
abstract class AppWeather extends ChopperService implements AppWeatherAbstract {
  static AppWeather getInstance(ChopperClient client) => _$AppWeather(client);

  @Get(path: "/weather?appid=d37af98b5012e1570b59393e3943afd8")
  @override
  Future<Weather> getCurrentWeather(
    @Query() int lat,
    @Query() int long,
  ) async {
    await Future.delayed(Duration.zero);
    return const Weather();
  }

  @Get(path: "/forecast?appid=d37af98b5012e1570b59393e3943afd8")
  @override
  Future<ForecastWeather> getForecastWeather(
    @Query() int lat,
    @Query() int long,
  ) async {
    await Future.delayed(Duration.zero);
    return const ForecastWeather();
  }
}
