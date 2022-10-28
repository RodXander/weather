// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherStats _$$_WeatherStatsFromJson(Map<String, dynamic> json) =>
    _$_WeatherStats(
      temp: (json['temp'] as num?)?.toDouble() ?? 0,
      feelsLike: (json['feelsLike'] as num?)?.toDouble() ?? 0,
      tempMin: (json['tempMin'] as num?)?.toDouble() ?? 0,
      tempMax: (json['tempMax'] as num?)?.toDouble() ?? 0,
      pressure: (json['pressure'] as num?)?.toDouble() ?? 0,
      humidity: (json['humidity'] as num?)?.toDouble() ?? 0,
      seaLevel: (json['seaLevel'] as num?)?.toDouble() ?? 0,
      grndLevel: (json['grndLevel'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_WeatherStatsToJson(_$_WeatherStats instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'seaLevel': instance.seaLevel,
      'grndLevel': instance.grndLevel,
    };
