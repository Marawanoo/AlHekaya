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
        onPressed: () => Get.toNamed(mainView),
        child:  Text('تخطي',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white)),
      ),
    );
  }
}
