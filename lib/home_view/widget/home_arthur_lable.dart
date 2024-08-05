import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/widgets/icon_text.dart';

import '../../main_variable.dart';

class HomeArthurLable extends StatelessWidget {
  const HomeArthurLable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(
              'assets/images/350128296_675694891049596_7342086158320602888_n.png'),
        ),
        SizedBox(
          width: space / 2,
        ),
        Column(
          children: [
            Text(
              'Hakimi Abdul',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1b2047),
                  height: 1.3),
            ),
            IconText(
              icon: Iconsax.clock,
              title: ' 5h ago',
              color: Color(0xff1b2047),
            )
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Icon(
              color: mainColor,
              Iconsax.send_2,
              size: 25,
            ),
          ),
        )
      ],
    );
  }
}
