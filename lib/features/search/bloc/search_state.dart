import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/location/location.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(false) isLoading,
    @Default([]) List<Location> locations,
  }) = _SearchState;
}
