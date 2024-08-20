import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText(
      {super.key,
      required this.title,
      required this.icon,
      required this.color,
      this.textSize = 11,
      this.iconSize = 15});
  final String title;
  final IconData icon;
  final Color color;
  final double textSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        Text(
          textDirection: TextDirection.rtl,
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
