import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.freezed.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.loading() = MainEventLoading;
  const factory MainEvent.changedForecastOrder({required bool ascending}) =
      MainEventChangedForecastOrder;
  const factory MainEvent.searchUpdated({required String search}) =
      MainEventSearchUpdated;
}
