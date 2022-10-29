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
import 'package:weather/features/search/components/search_bar.dart';
import 'package:weather/features/search/search_screen.dart';
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
  FocusNode textFieldFocusNode = FocusNode();

  @override
  void initState() {
    textFieldFocusNode.unfocus();
    mainBloc.add(const MainEventLoading());
    super.initState();
  }

  @override
  void dispose() {
    textFieldFocusNode.dispose();
    super.dispose();
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
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Hero(
                        tag: SearchBar.searchBarTag,
                        child: SearchBar(
                          readOnly: true,
                          hintText: state.location.name,
                          onTap: () async {
                            var result = await Navigator.of(context)
                                .pushNamed(SearchScreen.routeName);
                            if (result is bool && result) {
                              mainBloc.add(const MainEventLocationUpdated());
                            }
                          },
                        ),
                      ),
                      if (state.state == MainStateEnum.loading)
                        const Padding(
                          padding: EdgeInsets.all(32),
                          child: CircularProgressIndicator(),
                        ),
                      if (state.state == MainStateEnum.loaded)
                        Column(
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
                              date: AppLocalizations.of(context)
                                  .now
                                  .toUpperCase(),
                              time:
                                  DateFormat("hh:mm a").format(DateTime.now()),
                              iconUrl: state.weatherIconUrl(
                                  state.weather!.weather.firstOrNull?.icon ??
                                      ""),
                              expanded: true,
                            ),
                            const SizedBox(height: 64),
                            BlocBuilder<MainBloc, MainState>(
                              bloc: mainBloc,
                              buildWhen: (previous, current) =>
                                  previous.ascForecast != current.ascForecast,
                              builder: (_, state) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        WeatherTitle(
                                            title: AppLocalizations.of(context)
                                                .fiveDayForecast
                                                .toUpperCase()),
                                        const Spacer(),
                                        TextButton(
                                            onPressed: () => mainBloc.add(
                                                const MainEventChangedForecastOrder(
                                                    ascending: true)),
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .asc
                                                  .toUpperCase(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4
                                                  ?.copyWith(
                                                    fontWeight:
                                                        !state.ascForecast
                                                            ? FontWeight.w100
                                                            : null,
                                                  ),
                                            )),
                                        TextButton(
                                            onPressed: () => mainBloc.add(
                                                const MainEventChangedForecastOrder(
                                                    ascending: false)),
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .des
                                                  .toUpperCase(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4
                                                  ?.copyWith(
                                                    fontWeight:
                                                        state.ascForecast
                                                            ? FontWeight.w100
                                                            : null,
                                                  ),
                                            )),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    for (Weather weather in (state.ascForecast
                                            ? state.forecast?.list
                                            : state.forecast?.list.reversed) ??
                                        [])
                                      WeatherCard(
                                        weather: weather,
                                        date: DateFormat("MMMM, dd")
                                            .format(weather.dt!),
                                        iconUrl: state.weatherIconUrl(
                                            weather.weather.firstOrNull?.icon ??
                                                ""),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
