import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/models/coordinate/coordinate.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String name,
    required Coordinate coordinates,
  }) = _Location;
}
