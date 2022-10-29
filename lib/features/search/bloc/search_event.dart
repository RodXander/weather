import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/location/location.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchUpdated({required String search}) =
      SearchEventSearchUpdated;
  const factory SearchEvent.locationUpdated({required Location location}) =
      SearchEventLocationUpdated;
}
