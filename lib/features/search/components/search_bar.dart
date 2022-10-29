import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  static const String searchBarTag = "search_bar";
  const SearchBar({
    Key? key,
    this.focusNode,
    this.onTap,
    this.onSubmitted,
    this.hintText,
    this.readOnly = false,
    this.enableSuffixIcon = true,
  }) : super(key: key);

  final FocusNode? focusNode;
  final Function()? onTap;
  final Function(String)? onSubmitted;
  final String? hintText;
  final bool readOnly;
  final bool enableSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
        child: TextField(
          onTap: onTap,
          readOnly: readOnly,
          focusNode: focusNode,
          style: Theme.of(context).textTheme.headline4,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white54),
            suffixIcon:
                enableSuffixIcon ? const Icon(Icons.search, size: 40) : null,
            suffixIconColor: enableSuffixIcon ? Colors.white54 : null,
          ),
          textInputAction: TextInputAction.search,
        ),
      ),
    );
  }
}
