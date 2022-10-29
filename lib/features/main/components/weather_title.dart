import 'package:flutter/material.dart';

class WeatherTitle extends StatelessWidget {
  const WeatherTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
