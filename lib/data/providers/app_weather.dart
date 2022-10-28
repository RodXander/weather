import 'package:chopper/chopper.dart';
import 'package:weather/data/providers/interfaces/app_weather_abstract.dart';
import 'package:weather/models/forecast_weather/forecast_weather.dart';
import 'package:weather/models/weather/weather.dart';

part 'app_weather.chopper.dart';

@ChopperApi()
abstract class AppWeather extends ChopperService implements AppWeatherAbstract {
  static const appId = "d37af98b5012e1570b59393e3943afd8";
  static AppWeather getInstance() => _$AppWeather();

  @override
  Future<Weather> getCurrentWeather(
    double lat,
    double lon,
  ) async {
    var response = await _getCurrentWeather(lat, lon);
    return Weather();
  }

  @Get(path: "/weather?appid=$appId")
  Future<Response<Weather>> _getCurrentWeather(
    @Query() double lat,
    @Query() double lon,
  );

  @override
  Future<ForecastWeather> getForecastWeather(
    double lat,
    double lon,
  ) async {
    var response = await _getForecastWeather(lat, lon);
    return ForecastWeather();
  }

  @Get(path: "/forecast?appid=$appId")
  Future<Response<ForecastWeather>> _getForecastWeather(
    @Query() double lat,
    @Query() double lon,
  );
}
