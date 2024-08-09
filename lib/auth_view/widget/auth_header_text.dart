import 'package:flutter/material.dart';

import '../../main_variable.dart';

class AuthHeaderText extends StatelessWidget {
  const AuthHeaderText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: mainColor),
    );
  }
}
