import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});
  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: color,
              height: 1.3),
        ),
        Icon(
          icon,
          size: 15,
        ),
      ],
    );
  }
}
