// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forecast_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastWeather _$ForecastWeatherFromJson(Map<String, dynamic> json) {
  return _ForecastWeather.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeather {
  List<Weather> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(
          ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res, ForecastWeather>;
  @useResult
  $Res call({List<Weather> list});
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res, $Val extends ForecastWeather>
    implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastWeatherCopyWith<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  factory _$$_ForecastWeatherCopyWith(
          _$_ForecastWeather value, $Res Function(_$_ForecastWeather) then) =
      __$$_ForecastWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Weather> list});
}

/// @nodoc
class __$$_ForecastWeatherCopyWithImpl<$Res>
    extends _$ForecastWeatherCopyWithImpl<$Res, _$_ForecastWeather>
    implements _$$_ForecastWeatherCopyWith<$Res> {
  __$$_ForecastWeatherCopyWithImpl(
      _$_ForecastWeather _value, $Res Function(_$_ForecastWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_ForecastWeather(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeather implements _ForecastWeather {
  const _$_ForecastWeather({final List<Weather> list = const []})
      : _list = list;

  factory _$_ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherFromJson(json);

  final List<Weather> _list;
  @override
  @JsonKey()
  List<Weather> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ForecastWeather(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastWeather &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastWeatherCopyWith<_$_ForecastWeather> get copyWith =>
      __$$_ForecastWeatherCopyWithImpl<_$_ForecastWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherToJson(
      this,
    );
  }
}

abstract class _ForecastWeather implements ForecastWeather {
  const factory _ForecastWeather({final List<Weather> list}) =
      _$_ForecastWeather;

  factory _ForecastWeather.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeather.fromJson;

  @override
  List<Weather> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastWeatherCopyWith<_$_ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
