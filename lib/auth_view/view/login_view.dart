import 'package:flutter/material.dart';
import 'package:news/auth_view/widget/login_body.dart';
import 'package:news/auth_view/widget/login_header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [LoginHeader(), LoginBody()],
        ),
      ),
    );
  }
}
