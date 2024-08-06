import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/widgets/icon_text.dart';

import '../../main_variable.dart';

class HomeArthurLable extends StatelessWidget {
  const HomeArthurLable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              color: mainColor,
              Iconsax.bookmark_2,
              size: 25,
            ),
          ),
        ),
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
              'حاكيم عبدالله',
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1b2047),
                  height: 1.3),
            ),
            IconText(
              icon: Iconsax.clock,
              title: ' 5h منذ ',
              color: Color(0xff1b2047),
            )
          ],
        ),
      ],
    );
  }
}
