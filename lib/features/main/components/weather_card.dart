import 'package:boxy/flex.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:weather/models/weather/weather.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
    required this.weather,
    this.iconUrl = "",
    this.expanded = false,
  }) : super(key: key);

  final Weather weather;
  final String iconUrl;
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
                  AppLocalizations.of(context).now.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(width: 8),
                Text(
                  DateFormat("hh:mm a").format(DateTime.now()),
                  style: Theme.of(context)
                      .textTheme
                      .headline6
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
                    style: Theme.of(context).textTheme.headline1,
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
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
