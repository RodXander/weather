import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/repositories/app_repository.dart';
import 'package:weather/features/main/bloc/main_event.dart';
import 'package:weather/features/main/bloc/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc()
      : super(MainState(
          state: MainStateEnum.loading,
          location: GetIt.I<AppRepository>().getCurrentLocation(),
        )) {
    on<MainEventLoading>((event, emit) => _onMainEventLoading(emit));
    on<MainEventChangedForecastOrder>((event, emit) =>
        _onMainEventChangedForecastOrder(emit, event.ascending));
    on<MainEventSearchUpdated>(
      (event, emit) => _onMainEventSearchUpdated(emit, event.search),
      transformer: droppable(),
    );
  }

  void _onMainEventLoading(Emitter emit) async {
    var weather = await GetIt.I<AppRepository>()
        .getCurrentWeather(state.location.coordinates);
    var forecast = await GetIt.I<AppRepository>()
        .getForecastWeather(state.location.coordinates);

    emit(state.copyWith(
      state: MainStateEnum.loaded,
      weather: weather,
      forecast: forecast,
    ));
  }

  void _onMainEventChangedForecastOrder(Emitter emit, bool ascending) {
    emit(state.copyWith(
      ascForecast: ascending,
    ));
  }

  void _onMainEventSearchUpdated(Emitter emit, String search) {
    int i = 0;
  }
}
