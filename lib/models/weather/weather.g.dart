// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      weather: (json['weather'] as List<dynamic>?)
              ?.map(
                  (e) => WeatherDescription.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      main: json['main'] == null
          ? const WeatherStats()
          : WeatherStats.fromJson(json['main'] as Map<String, dynamic>),
      dt: WeatherConverter.fromInt(json['dt'] as int),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'main': instance.main,
      'dt': WeatherConverter.toDateTime(instance.dt),
    };
