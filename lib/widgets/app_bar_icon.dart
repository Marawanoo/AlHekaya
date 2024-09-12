import 'package:flutter/material.dart';
import 'package:news/main_variable.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({super.key, required this.icon, required this.function});
  final IconData icon;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.grey.withOpacity(0.1)),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          icon,
          size: 30,
          color: mainColor,
        ),
        onPressed: function,
      ),
    );
  }
}
