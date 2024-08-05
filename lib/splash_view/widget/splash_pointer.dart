import 'package:flutter/material.dart';

import '../model/splash_model.dart';

class SplashPointer extends StatelessWidget {
  const SplashPointer({super.key, required this.splashModel});
  final SplashModel splashModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: splashModel.radiusWidth[0],
          height: 15,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: splashModel.radiusWidth[1],
          height: 15,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
        ),
        Container(
          width: splashModel.radiusWidth[2],
          height: 15,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
        ),
      ],
    );
  }
}
