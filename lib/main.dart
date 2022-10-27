import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/app/bloc/app_bloc.dart';
import 'package:weather/features/app/bloc/app_event.dart';
import 'package:weather/features/app/bloc/app_state.dart';
import 'package:weather/features/app/weather_app.dart';

void main() async {
  // Some packages require this in order to be initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Setting the edgeToEdge UI mode.
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  // Initializing the app's bloc.
  var appBloc = AppBloc();
  // Listening to the bloc states to run the app when it gets initialized.
  late StreamSubscription appBlocSub;
  appBlocSub = appBloc.stream.listen((state) async {
    if (state.state == AppStateEnum.initialized) {
      // Cancelling the subscription to the bloc's stream, since the app initialized correctly.
      await appBlocSub.cancel();
      // Running the app.
      runApp(BlocProvider.value(
        value: appBloc,
        child: const WeatherApp(),
      ));
    }
  });
  // Launching the first event to initialize the app.
  appBloc.add(const AppEventStarted());
}
