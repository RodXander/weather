import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate.freezed.dart';

@freezed
class Coordinate with _$Coordinate {
  const factory Coordinate({
    required double lat,
    required double lon,
  }) = _Coordinate;
}
