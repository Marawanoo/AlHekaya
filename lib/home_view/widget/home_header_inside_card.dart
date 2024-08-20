import 'package:flutter/material.dart';
import 'package:news/home_view/model/news_model.dart';

import 'home_arthur_lable.dart';
import 'home_header_card_title.dart';

class HomeHeaderInsideCard extends StatelessWidget {
  const HomeHeaderInsideCard({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.screen,
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HomeHeaderCardTitle(
            newsModel: newsModel,
          ),
          HomeArthurLable(
            newsModel: newsModel,
          )
        ],
      ),
    );
  }
}
