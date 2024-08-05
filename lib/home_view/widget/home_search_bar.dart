import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../main_variable.dart';
import '../../widgets/text_field_widget.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: TextFieldWidget(
              title: '',
              lable: 'Search news or author',
              icon: Iconsax.search_favorite),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: mainColor, borderRadius: BorderRadius.circular(100)),
          alignment: Alignment.center,
          child: const Icon(
            size: 30,
            Iconsax.arrange_circle,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
