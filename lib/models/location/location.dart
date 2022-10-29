import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String name,
    String? country,
    required double lat,
    required double lon,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> map) =>
      _$LocationFromJson(map);
}
