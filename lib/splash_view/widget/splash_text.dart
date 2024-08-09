import 'package:flutter/material.dart';
import 'package:news/splash_view/model/splash_model.dart';

import '../../main_variable.dart';

class SplashText extends StatelessWidget {
  const SplashText({super.key, required this.splashModel});
  final SplashModel splashModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          splashModel.title,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),const SizedBox(
          height: space,
        ),
        Text(
          splashModel.subtitle,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white) ,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
