import 'package:flutter/material.dart';

import '../../main_variable.dart';

class AuthSignLable extends StatelessWidget {
  const AuthSignLable(
      {super.key, required this.buttonText, required this.title});
  final String buttonText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
          onPressed: () => Navigator.pushNamed(context, registerView),
          child: Text(buttonText,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: mainColor),
              textDirection: TextDirection.rtl),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
          textDirection: TextDirection.rtl,
        )
      ],
    );
  }
}
