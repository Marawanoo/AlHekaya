import 'package:flutter/material.dart';

import '../../main_variable.dart';
import '../../widgets/elevated_button_widget.dart';

class HomeNewsListBar extends StatelessWidget {
  const HomeNewsListBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: MediaQuery.sizeOf(context).width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'All', color: mainColor)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'Sports', color: Colors.grey)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'Crypto', color: Colors.grey)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'Politics', color: Colors.grey)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'Current', color: Colors.grey)),
          SizedBox(
            width: space / 2,
          ),
        ],
      ),
    );
  }
}
