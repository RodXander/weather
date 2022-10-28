import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/repositories/app_repository.dart';
import 'package:weather/features/main/bloc/main_event.dart';
import 'package:weather/features/main/bloc/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState(state: MainStateEnum.loading)) {
    on<MainEventLoading>((event, emit) => _onMainEventLoading(emit));
  }

  void _onMainEventLoading(Emitter emit) async {
    GetIt.I<AppRepository>().loadCurrentWeatherData();
    GetIt.I<AppRepository>().loadForecastWeatherData();
  }
}
