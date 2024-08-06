import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/home_view/view/explore_view.dart';
import 'package:news/main_variable.dart';
import 'package:news/services/news_services.dart';
import 'package:news/home_view/view/home_view.dart';
import 'package:news/auth_view/view/login_view.dart';
import 'package:news/auth_view/view/register_view.dart';
import 'package:news/splash_view/view/splash_view.dart';

void main() {
  NewsServices().getNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashView,
      getPages: [
        GetPage(name: splashView, page: () => const SplashView()),
        GetPage(name: loginView, page: () => const LoginView()),
        GetPage(name: registerView, page: () => const RegisterView()),
        GetPage(name: homeView, page: () => const HomeView()),
        GetPage(name: exploreView, page: () => const ExploreView())
      ],
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  height: 1.3),
              displayLarge: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  height: 1.3),
              displayMedium: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.3),
              displaySmall: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                  height: 1.3)),
          fontFamily: 'Montserrat'),
    );
  }
}
