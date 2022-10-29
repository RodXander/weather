import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/repositories/app_repository.dart';
import 'package:weather/features/search/bloc/search_event.dart';
import 'package:weather/features/search/bloc/search_state.dart';
import 'package:weather/models/location/location.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SearchEventSearchUpdated>(
      (event, emit) => _onSearchEventSearchUpdated(emit, event.search),
      transformer: droppable(),
    );
    on<SearchEventLocationUpdated>(
      (event, emit) => _onSearchEventLocationUpdated(emit, event.location),
    );
  }

  void _onSearchEventSearchUpdated(Emitter emit, String search) async {
    emit(state.copyWith(isLoading: true));
    emit(state.copyWith(
      isLoading: false,
      locations: await GetIt.I<AppRepository>().getGeocoding(search),
    ));
  }

  void _onSearchEventLocationUpdated(Emitter emit, Location location) async {
    await GetIt.I<AppRepository>().setCurrentLocation(location);
  }
}
