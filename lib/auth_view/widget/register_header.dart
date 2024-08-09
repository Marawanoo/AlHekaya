import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 125),
      width: MediaQuery.sizeOf(context).width,
      height: 250,
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff990F20), Color(0xffFF213E)])),
      child:  Center(
          child: Text('إنشاء حساب',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white))),
    );
  }
}
