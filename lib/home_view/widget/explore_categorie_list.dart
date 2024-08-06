import 'package:flutter/material.dart';

import '../../main_variable.dart';
import '../../widgets/elevated_button_widget.dart';

class ExploreCategorieList extends StatelessWidget {
  const ExploreCategorieList({super.key, required this.categorie});
  final List<String> categorie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Row(
        children: [
          Expanded(
              child: ElevatedBottomWidget(
                  radius: 20,
                  size: 14,
                  title: categorie[0],
                  color: secondMainColor)),
          SizedBox(
            width: space,
          ),
          Expanded(
              child: ElevatedBottomWidget(
                  radius: 20,
                  size: 14,
                  title: categorie[1],
                  color: secondMainColor)),
          SizedBox(
            width: space,
          ),
          Expanded(
              child: ElevatedBottomWidget(
                  radius: 20,
                  size: 14,
                  title: categorie[2],
                  color: secondMainColor)),
          SizedBox(
            width: space,
          ),
          Expanded(
              child: ElevatedBottomWidget(
                  radius: 20,
                  size: 14,
                  title: categorie[3],
                  color:
                      categorie[3] == 'الجميع' ? mainColor : secondMainColor))
        ],
      ),
    );
  }
}
