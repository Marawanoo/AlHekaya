import 'package:flutter/material.dart';

class HeaderSignUp extends StatelessWidget {
  const HeaderSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 75),
      width: MediaQuery.sizeOf(context).width,
      height: 250,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff990F20), Color(0xffFF213E)])),
      child: const Center(
          child: Text('إنشاء حساب',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.3))),
    );
  }
}
