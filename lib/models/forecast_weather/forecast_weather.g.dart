// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastWeather _$$_ForecastWeatherFromJson(Map<String, dynamic> json) =>
    _$_ForecastWeather(
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ForecastWeatherToJson(_$_ForecastWeather instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
