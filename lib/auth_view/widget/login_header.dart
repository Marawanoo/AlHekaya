import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 100),
      width: MediaQuery.sizeOf(context).width,
      height: 350,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff990F20), Color(0xffFF213E)])),
      child: Center(
        child: Image.asset(
          'assets/images/file.png',
          width: 200,
        ),
      ),
    );
  }
}
