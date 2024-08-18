import 'package:flutter/material.dart';

class ElevatedBottomWidget extends StatelessWidget {
  const ElevatedBottomWidget(
      {super.key,
      required this.title,
      required this.color,
      this.size = 18,
      this.radius = 12,
      this.function});
  final String title;
  final Color color;
  final double size;
  final double radius;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          elevation: 0,
          backgroundColor: color,
          fixedSize: Size(MediaQuery.sizeOf(context).width, 45),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius))),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontSize: size, color: Colors.white),
      ),
    );
  }
}
