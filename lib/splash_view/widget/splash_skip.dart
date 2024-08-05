import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main_variable.dart';

class SplashSkip extends StatelessWidget {
  const SplashSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -10,
      top: 20,
      child: TextButton(
        onPressed: () => Get.toNamed(homeView),
        child: const Text('تخطي',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                height: 1.3)),
      ),
    );
  }
}
