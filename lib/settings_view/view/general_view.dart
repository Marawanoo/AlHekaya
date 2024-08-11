import 'package:flutter/material.dart';

class GeneralView extends StatelessWidget {
  const GeneralView({super.key});

  @override
  Widget build(BuildContext context) {
    double widhtMedia = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Image.asset(
            width: widhtMedia - 100,
            'assets/images/3d-plastilina-round-pink-cancel-button.png'),
      ),
    );
  }
}
