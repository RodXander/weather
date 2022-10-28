import 'package:bloc/bloc.dart';
import 'package:weather/features/main/bloc/main_event.dart';
import 'package:weather/features/main/bloc/main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState(state: MainStateEnum.loading)) {
    on<MainEventLoading>((event, emit) => _onMainEventLoading(emit));
  }

  void _onMainEventLoading(Emitter emit) async {}
}
