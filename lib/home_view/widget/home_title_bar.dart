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
          style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
          onPressed: () => Get.toNamed(loginView),
          child:  Text(
            'عرض الكل',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: mainColor),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
