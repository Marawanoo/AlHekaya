import 'package:flutter/material.dart';

class LablePassword extends StatelessWidget {
  const LablePassword({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: TextDirection.rtl,
      title,
      style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w900,
          color: Colors.grey,
          height: 1.3),
    );
  }
}
