import 'package:flutter/material.dart';
import 'package:news/widgets/news_component.dart';

class HomeNewsComponentBuldier extends StatelessWidget {
  const HomeNewsComponentBuldier({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) => const NewsComponent(),
    );
  }
}
