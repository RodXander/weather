class WeatherConverter {
  static DateTime? fromInt(int value) =>
      DateTime.fromMillisecondsSinceEpoch(value * 1000, isUtc: true);
  static int toDateTime(DateTime? value) =>
      (value?.millisecondsSinceEpoch ?? 0) ~/ 1000;
}
