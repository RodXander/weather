import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/main/bloc/main_bloc.dart';
import 'package:weather/features/main/bloc/main_event.dart';
import 'package:weather/features/main/bloc/main_state.dart';

/// Main screen of the app.
class MainScreen extends StatelessWidget {
  static const routeName = '/';

  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mainBloc = MainBloc();
    return BlocBuilder<MainBloc, MainState>(
      bloc: mainBloc,
      buildWhen: (previous, current) => previous.state != current.state,
      builder: (_, state) {
        switch (state.state) {
          case MainStateEnum.loading:
            mainBloc.add(const MainEventLoading());
            return const Center(
              child: CircularProgressIndicator(),
            );
          case MainStateEnum.loaded:
            return Container();
        }
      },
    );
  }
}
