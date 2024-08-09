import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Iconsax.notification,
                  size: 28,
                ))),
        Text(
          ' صباح الخير!  \n  ضيف   ',
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
