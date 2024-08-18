import 'package:flutter/material.dart';
import 'package:news/home_view/model/news_model.dart';
import 'package:news/home_view/widget/home_header_inside_card.dart';

class HomeHeaderBodyCard extends StatelessWidget {
  const HomeHeaderBodyCard({super.key, required this.newsModel});
  final NewsModel newsModel;
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
          image: DecorationImage(
              fit: BoxFit.fill,
              image: newsModel.image == ''
                  ? const AssetImage('assets/images/science.jpg')
                  : NetworkImage(newsModel.image) as ImageProvider),
        ),
        child: HomeHeaderInsideCard(
          newsModel: newsModel,
        ));
  }
}
