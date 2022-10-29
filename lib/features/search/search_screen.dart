import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/features/search/bloc/search_bloc.dart';
import 'package:weather/features/search/bloc/search_event.dart';
import 'package:weather/features/search/bloc/search_state.dart';
import 'package:weather/features/search/components/search_bar.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search';

  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchBloc searchBloc = SearchBloc();
  FocusNode textFieldFocusNode = FocusNode();

  @override
  void dispose() {
    textFieldFocusNode.unfocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<SearchBloc, SearchState>(
            bloc: searchBloc,
            builder: (_, state) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          iconSize: 48,
                          splashRadius: 40,
                          icon: const Icon(
                            Icons.arrow_back,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Hero(
                            tag: SearchBar.searchBarTag,
                            flightShuttleBuilder:
                                (_, animation, flightDirection, ___, ____) {
                              // Once the animation has ended request focus from the destination widget to show the keyboard.
                              animation.addStatusListener((status) {
                                if (status == AnimationStatus.completed) {
                                  textFieldFocusNode.requestFocus();
                                }
                              });
                              // Widget used during flight, similar to the one on destination, but readonly.
                              return const SearchBar(readOnly: true);
                            },
                            child: SearchBar(
                              focusNode: textFieldFocusNode,
                              onChanged: (search) => searchBloc.add(
                                  SearchEventSearchUpdated(search: search)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      child: Container(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
