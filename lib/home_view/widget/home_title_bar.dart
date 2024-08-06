import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../main_variable.dart';

class HomeTitleBar extends StatelessWidget {
  const HomeTitleBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
          onPressed: () => Get.toNamed(loginView),
          child: const Text(
            'عرض الكل',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: mainColor,
                height: 2),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
