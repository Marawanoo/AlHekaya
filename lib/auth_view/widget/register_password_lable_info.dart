import 'package:flutter/material.dart';

class RegisterPasswordLableInfo extends StatelessWidget {
  const RegisterPasswordLableInfo({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: TextDirection.rtl,
      title,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }
}
