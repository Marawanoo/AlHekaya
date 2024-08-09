import 'package:flutter/material.dart';
import 'package:news/auth_view/widget/register_body.dart';
import 'package:news/auth_view/widget/register_header.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [RegisterHeader(), RegisterBody()],
        ),
      ),
    );
  }
}
