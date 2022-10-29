import 'package:weather/models/location/location.dart';

abstract class AppGeocodingAbstract {
  Future<List<Location>> getGeocoding(
    String name,
  );
}
