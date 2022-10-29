import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:weather/data/providers/interfaces/app_geocoding_abstract.dart';
import 'package:weather/models/location/location.dart';

part 'app_geocoding.chopper.dart';

@ChopperApi()
abstract class AppGeocoding extends ChopperService
    implements AppGeocodingAbstract {
  static const appId = "d37af98b5012e1570b59393e3943afd8";

  static AppGeocoding getInstance() => _$AppGeocoding();

  @override
  Future<List<Location>> getGeocoding(
    String name,
  ) async {
    return json
        .decode((await _getGeocoding(name)).body ?? "")
        .map<Location>((locationMap) => Location.fromJson(locationMap))
        .toList();
  }

  @Get(
      path: "http://api.openweathermap.org/geo/1.0/direct?limit=5&appid=$appId")
  Future<Response<String>> _getGeocoding(
    @Query() String q,
  );
}
