import 'splash_model.dart';

class SplashDataProvider {
  List<SplashModel> getSplashData() {
    return [
      SplashModel(
          image: 'assets/images/First_Splash.jpg',
          title: 'ابقَ على اطلاع!',
          subtitle:
              'احصل على الأخبار العاجلة والتحديثات الشخصية مباشرة في خلاصتك.',
          radiusWidth: [15, 15, 35]),
      SplashModel(
          image: 'assets/images/Second_Splash.jpg',
          title: 'احفظ وشارك',
          subtitle:
              'هل وجدت مقالًا مثيرًا للاهتمام؟ احفظه للقراءة لاحقًا أو شاركه مع أصدقائك على وسائل التواصل الاجتماعي.',
          radiusWidth: [15, 35, 15]),
      SplashModel(
          image: 'assets/images/Third_Splash.jpg',
          title: 'استمتع بالقراءة بدون إعلانات!',
          subtitle:
              'قم بالترقية إلى نسختنا المميزة لتجربة قراءة خالية من الإعلانات.',
          radiusWidth: [35, 15, 15]),
    ];
  }
}
