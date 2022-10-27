import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/providers/app_preferences.dart';
import 'package:weather/data/providers/interfaces/app_preferences_abstract.dart';
import 'package:weather/data/repositories/app_repository.dart';
import 'package:weather/features/app/bloc/app_event.dart';
import 'package:weather/features/app/bloc/app_state.dart';

/// Main app's bloc handling initialization and app-wide business-logic.
/// It uses [AppEvent] events and [AppState] states.
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState(state: AppStateEnum.initializing)) {
    // Waits for all the necessary repositories and data providers to load before initializing the app.
    on<AppEventStarted>(
      (event, emit) async => await _onAppEventStarted(emit),
      transformer: sequential(),
    );
    // Keeps waiting for the repositories and providers to load when AppEventStarted timed out.
    on<AppEventLoading>(
      (event, emit) async => await _onAppEventLoading(emit),
      transformer: sequential(),
    );
  }

  /// Registers the repositories and providers with GetIt and then triggers [AppEventLoading].
  Future _onAppEventStarted(Emitter emit) async {
    GetIt.I.registerSingletonAsync<AppPreferencesAbstract>(
      () => AppPreferences.getInstance(),
    );
    GetIt.I.registerSingletonAsync(
      () => AppRepository.getInstance(),
      dependsOn: [AppPreferencesAbstract],
    );
    add(const AppEventLoading());
  }

  /// Waits for the repositories and providers to load before initializing the app with [AppEventStarted].
  ///
  /// If it times out it logs the attempt and keeps trying indefinitely.
  Future _onAppEventLoading(Emitter emit) async {
    try {
      // Wait a maximum of 10 seconds for all the repositories and providers to load.
      await GetIt.I.allReady(timeout: const Duration(seconds: 10));
      // App initialization successful.
      emit(state.copyWith(
        state: AppStateEnum.initialized,
      ));
    } catch (exception) {
      // An exception has occurred.
      emit(state.copyWith(
        error: exception.toString(),
      ));
      // Reset GetIt to start over.
      await GetIt.I.reset();
      // Restarting the app.
      add(const AppEventStarted());
    }
  }
}
