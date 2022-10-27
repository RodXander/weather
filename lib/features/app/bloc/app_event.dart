import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.freezed.dart';

/// App's main events.
/// [AppEventStarted] launched when the app first starts.
/// [AppEventLoading] launched when the app starts loading the necessary data.
@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.started() = AppEventStarted;
  const factory AppEvent.loading() = AppEventLoading;
}
