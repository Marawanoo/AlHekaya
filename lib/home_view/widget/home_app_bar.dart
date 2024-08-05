import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(
              'assets/images/350128296_675694891049596_7342086158320602888_n.png'),
        ),
        Text(
          '  Good Morning! \n  Marawan',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Expanded(
            child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Iconsax.notification)))
      ],
    );
  }
}
