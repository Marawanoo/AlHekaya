import 'package:flutter/material.dart';

import 'splash_component.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        reverse: true,
        children: const [
          SplachComponent(
            image: 'assets/images/First_Splash.jpg',
            title: 'ابقَ على اطلاع!',
            subTitle:
                'احصل على الأخبار العاجلة والتحديثات الشخصية مباشرة في خلاصتك.',
            widthRadius: [15, 15, 35],
          ),
          SplachComponent(
            image: 'assets/images/Second_Splash.jpg',
            title: 'احفظ وشارك',
            subTitle:
                'هل وجدت مقالًا مثيرًا للاهتمام؟ احفظه للقراءة لاحقًا أو شاركه مع أصدقائك على وسائل التواصل الاجتماعي.',
            widthRadius: [15, 35, 15],
          ),
          SplachComponent(
            image: 'assets/images/Third_Splash.jpg',
            title: 'استمتع بالقراءة بدون إعلانات!',
            subTitle:
                'قم بالترقية إلى نسختنا المميزة لتجربة قراءة خالية من الإعلانات.',
            widthRadius: [35, 15, 15],
          ),
        ],
      ),
    );
  }
}
