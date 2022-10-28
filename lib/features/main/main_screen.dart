import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:weather/features/main/bloc/main_bloc.dart';
import 'package:weather/features/main/bloc/main_event.dart';
import 'package:weather/features/main/bloc/main_state.dart';
import 'package:weather/features/main/components/weather_card.dart';
import 'package:weather/features/main/components/weather_title.dart';
import 'package:weather/models/weather/weather.dart';

/// Main screen of the app.
class MainScreen extends StatefulWidget {
  static const routeName = '/';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  MainBloc mainBloc = MainBloc();

  @override
  void initState() {
    mainBloc.add(const MainEventLoading());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<MainBloc, MainState>(
            bloc: mainBloc,
            buildWhen: (previous, current) => previous.state != current.state,
            builder: (_, state) {
              switch (state.state) {
                case MainStateEnum.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case MainStateEnum.loaded:
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 64),
                          WeatherTitle(
                              title: AppLocalizations.of(context)
                                  .currentWeather
                                  .toUpperCase()),
                          const SizedBox(height: 16),
                          WeatherCard(
                            weather: state.weather!,
                            date:
                                AppLocalizations.of(context).now.toUpperCase(),
                            time: DateFormat("hh:mm a").format(DateTime.now()),
                            iconUrl: state.weatherIconUrl(
                                state.weather!.weather.firstOrNull?.icon ?? ""),
                            expanded: true,
                          ),
                          const SizedBox(height: 64),
                          WeatherTitle(
                              title: AppLocalizations.of(context)
                                  .fiveDayForecast
                                  .toUpperCase()),
                          const SizedBox(height: 16),
                          for (Weather weather in state.forecast?.list ?? [])
                            WeatherCard(
                              weather: weather,
                              date: DateFormat("MMMM, dd").format(weather.dt!),
                              iconUrl: state.weatherIconUrl(
                                  weather.weather.firstOrNull?.icon ?? ""),
                            ),
                        ],
                      ),
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
