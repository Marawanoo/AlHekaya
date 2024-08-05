import 'package:flutter/material.dart';
import 'package:news/splash_view/model/splash_model.dart';
import 'package:news/splash_view/style/splash_style.dart';

class SplashText extends StatelessWidget {
  const SplashText({super.key, required this.splashModel});
  final SplashModel splashModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          splashModel.title,
          style: SplashStyle.kSplashTitleStyle,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
        ),
        Text(
          splashModel.subtitle,
          style: SplashStyle.kSplashSubtitleStyle,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
