import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? onPressed;

  const SearchItem({
    Key? key,
    required this.title,
    required this.subtitle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
    );
  }
}
