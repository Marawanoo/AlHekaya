import 'package:flutter/material.dart';

import '../main_variable.dart';

class LableSign extends StatelessWidget {
  const LableSign({super.key, required this.buttonText, required this.title});
  final String buttonText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
          onPressed: () => Navigator.pushNamed(context, signUpView),
          child: Text(buttonText,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: mainColor,
                  height: 1.3),
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
