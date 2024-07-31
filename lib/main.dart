import 'package:flutter/material.dart';
import 'package:news/main_variable.dart';
import 'package:news/services/news_services.dart';
import 'package:news/views/login_view.dart';
import 'package:news/views/sign_up_view.dart';
import 'package:news/views/splash_view.dart';

void main() {
  NewsServices().getNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: splashView,
      routes: {
        splashView: (context) => const SplashView(),
        loginView: (context) => const LoginView(),
        signUpView: (context) => const SignUpView(),
      },
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
