import 'package:boxy/flex.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:weather/models/weather/weather.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
    required this.weather,
    required this.date,
    this.iconUrl = "",
    this.time = "",
    this.expanded = false,
  }) : super(key: key);

  final Weather weather;
  final String iconUrl;
  final String date;
  final String time;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  date,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(width: 8),
                Text(
                  time,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(fontWeight: FontWeight.w200),
                ),
              ],
            ),
            const SizedBox(height: 16),
            BoxyRow(
              children: [
                Image.network(
                  iconUrl,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 4),
                Dominant(
                  child: Text(
                    "${weather.main.temp}°",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ],
            ),
            if (expanded) const SizedBox(height: 16),
            if (expanded)
              Row(
                children: [
                  Text(
                    "${weather.weather.firstOrNull?.main}. ${weather.main.feelsLike != 0 ? "Feels like ${weather.main.feelsLike}°" : ""}",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
