// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get search => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventSearchUpdated value) searchUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchEventSearchUpdated value)? searchUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventSearchUpdated value)? searchUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchEventSearchUpdatedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$SearchEventSearchUpdatedCopyWith(_$SearchEventSearchUpdated value,
          $Res Function(_$SearchEventSearchUpdated) then) =
      __$$SearchEventSearchUpdatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$SearchEventSearchUpdatedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchEventSearchUpdated>
    implements _$$SearchEventSearchUpdatedCopyWith<$Res> {
  __$$SearchEventSearchUpdatedCopyWithImpl(_$SearchEventSearchUpdated _value,
      $Res Function(_$SearchEventSearchUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$SearchEventSearchUpdated(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventSearchUpdated implements SearchEventSearchUpdated {
  const _$SearchEventSearchUpdated({required this.search});

  @override
  final String search;

  @override
  String toString() {
    return 'SearchEvent.searchUpdated(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventSearchUpdated &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventSearchUpdatedCopyWith<_$SearchEventSearchUpdated>
      get copyWith =>
          __$$SearchEventSearchUpdatedCopyWithImpl<_$SearchEventSearchUpdated>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) searchUpdated,
  }) {
    return searchUpdated(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? searchUpdated,
  }) {
    return searchUpdated?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? searchUpdated,
    required TResult orElse(),
  }) {
    if (searchUpdated != null) {
      return searchUpdated(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchEventSearchUpdated value) searchUpdated,
  }) {
    return searchUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchEventSearchUpdated value)? searchUpdated,
  }) {
    return searchUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchEventSearchUpdated value)? searchUpdated,
    required TResult orElse(),
  }) {
    if (searchUpdated != null) {
      return searchUpdated(this);
    }
    return orElse();
  }
}

abstract class SearchEventSearchUpdated implements SearchEvent {
  const factory SearchEventSearchUpdated({required final String search}) =
      _$SearchEventSearchUpdated;

  @override
  String get search;
  @override
  @JsonKey(ignore: true)
  _$$SearchEventSearchUpdatedCopyWith<_$SearchEventSearchUpdated>
      get copyWith => throw _privateConstructorUsedError;
}
