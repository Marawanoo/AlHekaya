import 'package:flutter/material.dart';
import 'package:news/home_view/widget/home_header_body_card.dart';

class HomeHeaderBodyBuilder extends StatelessWidget {
  const HomeHeaderBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const HomeHeaderBodyCard());
  }
}
