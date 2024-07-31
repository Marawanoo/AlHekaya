import 'package:flutter/material.dart';

class ElevatedBottomWidget extends StatelessWidget {
  const ElevatedBottomWidget({
    super.key,
    required this.title,
    required this.color,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.pushNamed(context, homeView);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          fixedSize: Size(MediaQuery.sizeOf(context).width, 45),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            height: 1.3),
      ),
    );
  }
}
