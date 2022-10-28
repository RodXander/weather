// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_weather.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AppWeather extends AppWeather {
  _$AppWeather([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AppWeather;

  @override
  Future<Response<Weather>> _getCurrentWeather(
    double lat,
    double lon,
  ) {
    final String $url = '/weather?appid=d37af98b5012e1570b59393e3943afd8';
    final Map<String, dynamic> $params = <String, dynamic>{
      'lat': lat,
      'lon': lon,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Weather, Weather>($request);
  }

  @override
  Future<Response<ForecastWeather>> _getForecastWeather(
    double lat,
    double lon,
  ) {
    final String $url = '/forecast?appid=d37af98b5012e1570b59393e3943afd8';
    final Map<String, dynamic> $params = <String, dynamic>{
      'lat': lat,
      'lon': lon,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ForecastWeather, ForecastWeather>($request);
  }
}
