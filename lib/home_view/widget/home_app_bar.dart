import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/settings_view/controller/profile_controller.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          ' صباح الخير!  \n  ${controller.firstName.value.isEmpty ? 'ضيف' : controller.firstName.value}',
          style: Theme.of(context).textTheme.titleMedium,
          textDirection: TextDirection.rtl,
        ),
        const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(
              'assets/images/350128296_675694891049596_7342086158320602888_n.png'),
        ),
      ],
    );
  }
}
