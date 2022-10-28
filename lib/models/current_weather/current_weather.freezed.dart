// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentWeather {
  Weather get weather => throw _privateConstructorUsedError;
  WeatherStats get weatherStats => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call({Weather weather, WeatherStats weatherStats});

  $WeatherCopyWith<$Res> get weather;
  $WeatherStatsCopyWith<$Res> get weatherStats;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? weatherStats = null,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      weatherStats: null == weatherStats
          ? _value.weatherStats
          : weatherStats // ignore: cast_nullable_to_non_nullable
              as WeatherStats,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherStatsCopyWith<$Res> get weatherStats {
    return $WeatherStatsCopyWith<$Res>(_value.weatherStats, (value) {
      return _then(_value.copyWith(weatherStats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentWeatherCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$_CurrentWeatherCopyWith(
          _$_CurrentWeather value, $Res Function(_$_CurrentWeather) then) =
      __$$_CurrentWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Weather weather, WeatherStats weatherStats});

  @override
  $WeatherCopyWith<$Res> get weather;
  @override
  $WeatherStatsCopyWith<$Res> get weatherStats;
}

/// @nodoc
class __$$_CurrentWeatherCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$_CurrentWeather>
    implements _$$_CurrentWeatherCopyWith<$Res> {
  __$$_CurrentWeatherCopyWithImpl(
      _$_CurrentWeather _value, $Res Function(_$_CurrentWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? weatherStats = null,
  }) {
    return _then(_$_CurrentWeather(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      weatherStats: null == weatherStats
          ? _value.weatherStats
          : weatherStats // ignore: cast_nullable_to_non_nullable
              as WeatherStats,
    ));
  }
}

/// @nodoc

class _$_CurrentWeather implements _CurrentWeather {
  const _$_CurrentWeather(
      {this.weather = const Weather(),
      this.weatherStats = const WeatherStats()});

  @override
  @JsonKey()
  final Weather weather;
  @override
  @JsonKey()
  final WeatherStats weatherStats;

  @override
  String toString() {
    return 'CurrentWeather(weather: $weather, weatherStats: $weatherStats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentWeather &&
            (identical(other.weather, weather) || other.weather == weather) &&
            (identical(other.weatherStats, weatherStats) ||
                other.weatherStats == weatherStats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weather, weatherStats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      __$$_CurrentWeatherCopyWithImpl<_$_CurrentWeather>(this, _$identity);
}

abstract class _CurrentWeather implements CurrentWeather {
  const factory _CurrentWeather(
      {final Weather weather,
      final WeatherStats weatherStats}) = _$_CurrentWeather;

  @override
  Weather get weather;
  @override
  WeatherStats get weatherStats;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentWeatherCopyWith<_$_CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
