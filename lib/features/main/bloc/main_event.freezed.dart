// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool ascending) changedForecastOrder,
    required TResult Function() locationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool ascending)? changedForecastOrder,
    TResult? Function()? locationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool ascending)? changedForecastOrder,
    TResult Function()? locationUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventLoading value) loading,
    required TResult Function(MainEventChangedForecastOrder value)
        changedForecastOrder,
    required TResult Function(MainEventLocationUpdated value) locationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventLoading value)? loading,
    TResult? Function(MainEventChangedForecastOrder value)?
        changedForecastOrder,
    TResult? Function(MainEventLocationUpdated value)? locationUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventLoading value)? loading,
    TResult Function(MainEventChangedForecastOrder value)? changedForecastOrder,
    TResult Function(MainEventLocationUpdated value)? locationUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainEventLoadingCopyWith<$Res> {
  factory _$$MainEventLoadingCopyWith(
          _$MainEventLoading value, $Res Function(_$MainEventLoading) then) =
      __$$MainEventLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventLoadingCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventLoading>
    implements _$$MainEventLoadingCopyWith<$Res> {
  __$$MainEventLoadingCopyWithImpl(
      _$MainEventLoading _value, $Res Function(_$MainEventLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventLoading implements MainEventLoading {
  const _$MainEventLoading();

  @override
  String toString() {
    return 'MainEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainEventLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool ascending) changedForecastOrder,
    required TResult Function() locationUpdated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool ascending)? changedForecastOrder,
    TResult? Function()? locationUpdated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool ascending)? changedForecastOrder,
    TResult Function()? locationUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventLoading value) loading,
    required TResult Function(MainEventChangedForecastOrder value)
        changedForecastOrder,
    required TResult Function(MainEventLocationUpdated value) locationUpdated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventLoading value)? loading,
    TResult? Function(MainEventChangedForecastOrder value)?
        changedForecastOrder,
    TResult? Function(MainEventLocationUpdated value)? locationUpdated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventLoading value)? loading,
    TResult Function(MainEventChangedForecastOrder value)? changedForecastOrder,
    TResult Function(MainEventLocationUpdated value)? locationUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MainEventLoading implements MainEvent {
  const factory MainEventLoading() = _$MainEventLoading;
}

/// @nodoc
abstract class _$$MainEventChangedForecastOrderCopyWith<$Res> {
  factory _$$MainEventChangedForecastOrderCopyWith(
          _$MainEventChangedForecastOrder value,
          $Res Function(_$MainEventChangedForecastOrder) then) =
      __$$MainEventChangedForecastOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({bool ascending});
}

/// @nodoc
class __$$MainEventChangedForecastOrderCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventChangedForecastOrder>
    implements _$$MainEventChangedForecastOrderCopyWith<$Res> {
  __$$MainEventChangedForecastOrderCopyWithImpl(
      _$MainEventChangedForecastOrder _value,
      $Res Function(_$MainEventChangedForecastOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ascending = null,
  }) {
    return _then(_$MainEventChangedForecastOrder(
      ascending: null == ascending
          ? _value.ascending
          : ascending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainEventChangedForecastOrder implements MainEventChangedForecastOrder {
  const _$MainEventChangedForecastOrder({required this.ascending});

  @override
  final bool ascending;

  @override
  String toString() {
    return 'MainEvent.changedForecastOrder(ascending: $ascending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventChangedForecastOrder &&
            (identical(other.ascending, ascending) ||
                other.ascending == ascending));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ascending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventChangedForecastOrderCopyWith<_$MainEventChangedForecastOrder>
      get copyWith => __$$MainEventChangedForecastOrderCopyWithImpl<
          _$MainEventChangedForecastOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool ascending) changedForecastOrder,
    required TResult Function() locationUpdated,
  }) {
    return changedForecastOrder(ascending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool ascending)? changedForecastOrder,
    TResult? Function()? locationUpdated,
  }) {
    return changedForecastOrder?.call(ascending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool ascending)? changedForecastOrder,
    TResult Function()? locationUpdated,
    required TResult orElse(),
  }) {
    if (changedForecastOrder != null) {
      return changedForecastOrder(ascending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventLoading value) loading,
    required TResult Function(MainEventChangedForecastOrder value)
        changedForecastOrder,
    required TResult Function(MainEventLocationUpdated value) locationUpdated,
  }) {
    return changedForecastOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventLoading value)? loading,
    TResult? Function(MainEventChangedForecastOrder value)?
        changedForecastOrder,
    TResult? Function(MainEventLocationUpdated value)? locationUpdated,
  }) {
    return changedForecastOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventLoading value)? loading,
    TResult Function(MainEventChangedForecastOrder value)? changedForecastOrder,
    TResult Function(MainEventLocationUpdated value)? locationUpdated,
    required TResult orElse(),
  }) {
    if (changedForecastOrder != null) {
      return changedForecastOrder(this);
    }
    return orElse();
  }
}

abstract class MainEventChangedForecastOrder implements MainEvent {
  const factory MainEventChangedForecastOrder({required final bool ascending}) =
      _$MainEventChangedForecastOrder;

  bool get ascending;
  @JsonKey(ignore: true)
  _$$MainEventChangedForecastOrderCopyWith<_$MainEventChangedForecastOrder>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainEventLocationUpdatedCopyWith<$Res> {
  factory _$$MainEventLocationUpdatedCopyWith(_$MainEventLocationUpdated value,
          $Res Function(_$MainEventLocationUpdated) then) =
      __$$MainEventLocationUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventLocationUpdatedCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventLocationUpdated>
    implements _$$MainEventLocationUpdatedCopyWith<$Res> {
  __$$MainEventLocationUpdatedCopyWithImpl(_$MainEventLocationUpdated _value,
      $Res Function(_$MainEventLocationUpdated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventLocationUpdated implements MainEventLocationUpdated {
  const _$MainEventLocationUpdated();

  @override
  String toString() {
    return 'MainEvent.locationUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventLocationUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool ascending) changedForecastOrder,
    required TResult Function() locationUpdated,
  }) {
    return locationUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool ascending)? changedForecastOrder,
    TResult? Function()? locationUpdated,
  }) {
    return locationUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool ascending)? changedForecastOrder,
    TResult Function()? locationUpdated,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainEventLoading value) loading,
    required TResult Function(MainEventChangedForecastOrder value)
        changedForecastOrder,
    required TResult Function(MainEventLocationUpdated value) locationUpdated,
  }) {
    return locationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainEventLoading value)? loading,
    TResult? Function(MainEventChangedForecastOrder value)?
        changedForecastOrder,
    TResult? Function(MainEventLocationUpdated value)? locationUpdated,
  }) {
    return locationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainEventLoading value)? loading,
    TResult Function(MainEventChangedForecastOrder value)? changedForecastOrder,
    TResult Function(MainEventLocationUpdated value)? locationUpdated,
    required TResult orElse(),
  }) {
    if (locationUpdated != null) {
      return locationUpdated(this);
    }
    return orElse();
  }
}

abstract class MainEventLocationUpdated implements MainEvent {
  const factory MainEventLocationUpdated() = _$MainEventLocationUpdated;
}
