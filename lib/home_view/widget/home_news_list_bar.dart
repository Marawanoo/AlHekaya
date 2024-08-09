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
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'الكل', color: mainColor)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'الرياضة', color: secondMainColor)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'العملات', color: secondMainColor)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'السياسة', color: secondMainColor)),
          SizedBox(
            width: space / 2,
          ),
          SizedBox(
              width: 75,
              child: ElevatedBottomWidget(
                  size: 14, title: 'الاقتصاد', color: secondMainColor)),
          SizedBox(
            width: space / 2,
          ),
        ],
      ),
    );
  }
}
