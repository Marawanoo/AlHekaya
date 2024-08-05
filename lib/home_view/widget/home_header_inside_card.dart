import 'package:flutter/material.dart';

import 'home_arthur_lable.dart';
import 'home_header_card_title.dart';

class HomeHeaderInsideCard extends StatelessWidget {
  const HomeHeaderInsideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.screen,
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200]),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [HomeHeaderCardTitle(), HomeArthurLable()],
      ),
    );
  }
}
