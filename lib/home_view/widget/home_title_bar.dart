import 'package:flutter/material.dart';

class HomeTitleBar extends StatelessWidget {
  const HomeTitleBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
