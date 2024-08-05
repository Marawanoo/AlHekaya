import 'package:flutter/material.dart';
import 'package:news/home_view/widget/home_header_inside_card.dart';

class HomeHeaderBodyCard extends StatelessWidget {
  const HomeHeaderBodyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 15),
        padding:
            const EdgeInsets.only(top: 175, bottom: 20, left: 10, right: 10),
        width: 275,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/science.jpg'))),
        child: const HomeHeaderInsideCard());
  }
}
