import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/search/bloc/search_event.dart';
import 'package:weather/features/search/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<SearchEventSearchUpdated>(
      (event, emit) => _onSearchEventSearchUpdated(emit, event.search),
      transformer: droppable(),
    );
  }

  void _onSearchEventSearchUpdated(Emitter emit, String search) {
    int i = 0;
  }
}
