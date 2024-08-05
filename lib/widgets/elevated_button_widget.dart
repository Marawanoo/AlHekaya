import 'package:flutter/material.dart';

class ElevatedBottomWidget extends StatelessWidget {
  const ElevatedBottomWidget({
    super.key,
    required this.title,
    required this.color,
    this.size = 18,
  });
  final String title;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.pushNamed(context, homeView);
      },
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(0),
          elevation: 0,
          backgroundColor: color,
          fixedSize: Size(MediaQuery.sizeOf(context).width, 45),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Text(
        title,
        style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            height: 1.3),
      ),
    );
  }
}
