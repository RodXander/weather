import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

/// App's main state.
/// [AppState.state] contains the current state of the app.
/// [AppState.error] contains the latest exception occurred during the app bloc's operation.
@freezed
class AppState with _$AppState {
  const factory AppState({
    required AppStateEnum state,
    String? error,
  }) = _AppState;
}

/// App's possible states.
/// [initializing] occurs while the app loads its repositories and data providers.
/// [initialized] occurs when all data has been loaded and the app starts normal operation.
enum AppStateEnum { initializing, initialized }
