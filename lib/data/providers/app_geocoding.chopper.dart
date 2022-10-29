// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_geocoding.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AppGeocoding extends AppGeocoding {
  _$AppGeocoding([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AppGeocoding;

  @override
  Future<Response<String>> _getGeocoding(String q) {
    final String $url =
        'http://api.openweathermap.org/geo/1.0/direct?appid=d37af98b5012e1570b59393e3943afd8';
    final Map<String, dynamic> $params = <String, dynamic>{'q': q};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<String, String>($request);
  }
}
