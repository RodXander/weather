import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @Default(0) int id,
    @Default("") String main,
    @Default("") String description,
    @Default("") String icon,
  }) = _Weather;
}
