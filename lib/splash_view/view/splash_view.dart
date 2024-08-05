import 'package:flutter/material.dart';
import 'package:news/splash_view/model/splash_data.dart';
import 'package:news/splash_view/model/splash_model.dart';

import 'splash_component.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final splashDataProvider = SplashDataProvider();
    final List<SplashModel> splashList = splashDataProvider.getSplashData();
    return Scaffold(
      body: PageView.builder(
        itemCount: splashList.length,
        reverse: true,
        itemBuilder: (BuildContext context, int index) =>
            SplachComponent(splashModel: splashList[index]),
      ),
    );
  }
}
