// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  List<WeatherDescription> get weather => throw _privateConstructorUsedError;
  WeatherStats get main => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
  DateTime? get dt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {List<WeatherDescription> weather,
      WeatherStats main,
      @JsonKey(fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
          DateTime? dt});

  $WeatherStatsCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? main = null,
    Object? dt = freezed,
  }) {
    return _then(_value.copyWith(
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDescription>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherStats,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherStatsCopyWith<$Res> get main {
    return $WeatherStatsCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WeatherDescription> weather,
      WeatherStats main,
      @JsonKey(fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
          DateTime? dt});

  @override
  $WeatherStatsCopyWith<$Res> get main;
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? main = null,
    Object? dt = freezed,
  }) {
    return _then(_$_Weather(
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDescription>,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherStats,
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather(
      {final List<WeatherDescription> weather = const [],
      this.main = const WeatherStats(),
      @JsonKey(fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
          this.dt})
      : _weather = weather;

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  final List<WeatherDescription> _weather;
  @override
  @JsonKey()
  List<WeatherDescription> get weather {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey()
  final WeatherStats main;
  @override
  @JsonKey(
      fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
  final DateTime? dt;

  @override
  String toString() {
    return 'Weather(weather: $weather, main: $main, dt: $dt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.dt, dt) || other.dt == dt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_weather), main, dt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {final List<WeatherDescription> weather,
      final WeatherStats main,
      @JsonKey(fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
          final DateTime? dt}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  List<WeatherDescription> get weather;
  @override
  WeatherStats get main;
  @override
  @JsonKey(
      fromJson: WeatherConverter.fromInt, toJson: WeatherConverter.toDateTime)
  DateTime? get dt;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
