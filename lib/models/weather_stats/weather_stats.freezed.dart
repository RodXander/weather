// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherStats {
  double get temp => throw _privateConstructorUsedError;
  double get feelsLike => throw _privateConstructorUsedError;
  double get tempMin => throw _privateConstructorUsedError;
  double get tempMax => throw _privateConstructorUsedError;
  double get pressure => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get seaLevel => throw _privateConstructorUsedError;
  double get grndLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStatsCopyWith<WeatherStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStatsCopyWith<$Res> {
  factory $WeatherStatsCopyWith(
          WeatherStats value, $Res Function(WeatherStats) then) =
      _$WeatherStatsCopyWithImpl<$Res, WeatherStats>;
  @useResult
  $Res call(
      {double temp,
      double feelsLike,
      double tempMin,
      double tempMax,
      double pressure,
      double humidity,
      double seaLevel,
      double grndLevel});
}

/// @nodoc
class _$WeatherStatsCopyWithImpl<$Res, $Val extends WeatherStats>
    implements $WeatherStatsCopyWith<$Res> {
  _$WeatherStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? seaLevel = null,
    Object? grndLevel = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      seaLevel: null == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as double,
      grndLevel: null == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherStatsCopyWith<$Res>
    implements $WeatherStatsCopyWith<$Res> {
  factory _$$_WeatherStatsCopyWith(
          _$_WeatherStats value, $Res Function(_$_WeatherStats) then) =
      __$$_WeatherStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      double feelsLike,
      double tempMin,
      double tempMax,
      double pressure,
      double humidity,
      double seaLevel,
      double grndLevel});
}

/// @nodoc
class __$$_WeatherStatsCopyWithImpl<$Res>
    extends _$WeatherStatsCopyWithImpl<$Res, _$_WeatherStats>
    implements _$$_WeatherStatsCopyWith<$Res> {
  __$$_WeatherStatsCopyWithImpl(
      _$_WeatherStats _value, $Res Function(_$_WeatherStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? seaLevel = null,
    Object? grndLevel = null,
  }) {
    return _then(_$_WeatherStats(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      seaLevel: null == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as double,
      grndLevel: null == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_WeatherStats implements _WeatherStats {
  const _$_WeatherStats(
      {this.temp = 0,
      this.feelsLike = 0,
      this.tempMin = 0,
      this.tempMax = 0,
      this.pressure = 0,
      this.humidity = 0,
      this.seaLevel = 0,
      this.grndLevel = 0});

  @override
  @JsonKey()
  final double temp;
  @override
  @JsonKey()
  final double feelsLike;
  @override
  @JsonKey()
  final double tempMin;
  @override
  @JsonKey()
  final double tempMax;
  @override
  @JsonKey()
  final double pressure;
  @override
  @JsonKey()
  final double humidity;
  @override
  @JsonKey()
  final double seaLevel;
  @override
  @JsonKey()
  final double grndLevel;

  @override
  String toString() {
    return 'WeatherStats(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity, seaLevel: $seaLevel, grndLevel: $grndLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStats &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, humidity, seaLevel, grndLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStatsCopyWith<_$_WeatherStats> get copyWith =>
      __$$_WeatherStatsCopyWithImpl<_$_WeatherStats>(this, _$identity);
}

abstract class _WeatherStats implements WeatherStats {
  const factory _WeatherStats(
      {final double temp,
      final double feelsLike,
      final double tempMin,
      final double tempMax,
      final double pressure,
      final double humidity,
      final double seaLevel,
      final double grndLevel}) = _$_WeatherStats;

  @override
  double get temp;
  @override
  double get feelsLike;
  @override
  double get tempMin;
  @override
  double get tempMax;
  @override
  double get pressure;
  @override
  double get humidity;
  @override
  double get seaLevel;
  @override
  double get grndLevel;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStatsCopyWith<_$_WeatherStats> get copyWith =>
      throw _privateConstructorUsedError;
}
