import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/data/repositories/app_repository.dart';
import 'package:weather/features/search/bloc/search_event.dart';
import 'package:weather/features/search/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SearchEventSearchUpdated>(
      (event, emit) => _onSearchEventSearchUpdated(emit, event.search),
      transformer: droppable(),
    );
  }

  void _onSearchEventSearchUpdated(Emitter emit, String search) async {
    var location = await GetIt.I<AppRepository>().getGeocoding(search);
    var i = 0;
  }
}
