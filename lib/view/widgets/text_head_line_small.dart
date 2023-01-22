import 'package:flutter/material.dart';

class TextHeadlineSmall extends StatelessWidget {
  const TextHeadlineSmall({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineSmall!
          .copyWith(color: Colors.orange),
    );
  }
}
