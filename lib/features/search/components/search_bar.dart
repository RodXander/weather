import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  static const String searchBarTag = "search_bar";
  const SearchBar({
    Key? key,
    this.focusNode,
    this.onTap,
    this.onChanged,
    this.hintText,
    this.readOnly = false,
  }) : super(key: key);

  final FocusNode? focusNode;
  final Function()? onTap;
  final Function(String)? onChanged;
  final String? hintText;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
        child: TextField(
          onTap: onTap,
          readOnly: readOnly,
          focusNode: focusNode,
          style: Theme.of(context).textTheme.headline2,
          onChanged: onChanged,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: Colors.white54),
            suffixIcon: const Icon(Icons.search, size: 48),
            suffixIconColor: Colors.white54,
          ),
          textInputAction: TextInputAction.search,
        ),
      ),
    );
  }
}
