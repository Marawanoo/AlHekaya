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
        ),
        const SizedBox(
          width: space,
        ),
        const Expanded(
          child: TextFieldWidget(
              title: '',
              lable: 'ابحث عن الأخبار أو الكاتب',
              icon: Iconsax.search_favorite),
        ),
      ],
    );
  }
}
