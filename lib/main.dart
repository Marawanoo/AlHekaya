import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/auth_view/view/login_view.dart';
import 'package:news/auth_view/view/register_view.dart';
import 'package:news/home_view/view/bookmark_view.dart';
import 'package:news/home_view/view/details_view.dart';
import 'package:news/home_view/view/explore_view.dart';
import 'package:news/home_view/view/home_view.dart';
import 'package:news/home_view/view/main_view.dart';
import 'package:news/main_variable.dart';
import 'package:news/services/news_services.dart';
import 'package:news/settings_view/view/general_view.dart';
import 'package:news/settings_view/view/profile_view.dart';
import 'package:news/settings_view/view/setting_view.dart';
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
        GetPage(name: mainView, page: () => const MainView()),
        GetPage(name: loginView, page: () => const LoginView()),
        GetPage(name: registerView, page: () => const RegisterView()),
        GetPage(name: homeView, page: () => const HomeView()),
        GetPage(name: exploreView, page: () => const ExploreView()),
        GetPage(name: detailsView, page: () => const DetailsView()),
        GetPage(name: bookmarkView, page: () => const BookmarkView()),
        GetPage(name: settingView, page: () => const SettingView()),
        GetPage(name: generalView, page: () => const GeneralView()),
        GetPage(name: profileView, page: () => const ProfileView()),
      ],
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Rubik',
        textTheme: TextTheme(
          headlineLarge: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.3),
          headlineMedium: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
          headlineSmall: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
          titleLarge: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
          titleMedium: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.3),
          titleSmall: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              height: 1.3),
          bodyLarge: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.3),
          bodyMedium: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              height: 1.3),
          bodySmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5),
              height: 1.3),
          labelLarge: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              height: 1.3),
          labelMedium: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.black.withOpacity(0.5),
              height: 1.3),
        ),
      ),
    );
  }
}
