import 'package:flutter/material.dart';
import 'package:news/widgets/news_component.dart';

class HomeNewsComponentBuldier extends StatelessWidget {
  const HomeNewsComponentBuldier({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) => const NewsComponent(),
        ),
      ],
    );
  }
}
