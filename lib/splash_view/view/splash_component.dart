import 'package:flutter/material.dart';
import 'package:news/main_variable.dart';
import 'package:news/splash_view/model/splash_model.dart';
import 'package:news/splash_view/widget/splash_pointer.dart';
import 'package:news/splash_view/widget/splash_skip.dart';
import 'package:news/splash_view/widget/splash_text.dart';

class SplachComponent extends StatelessWidget {
  const SplachComponent({
    super.key,
    required this.splashModel,
  });
  final SplashModel splashModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(splashModel.image))),
      child: Stack(
        children: [
          const SplashSkip(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SplashText(splashModel: splashModel),
              const SizedBox(
                height: space,
              ),
              SplashPointer(splashModel: splashModel)
            ],
          ),
        ],
      ),
    );
  }
}
