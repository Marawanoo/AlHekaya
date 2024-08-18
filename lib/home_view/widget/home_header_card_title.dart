import 'package:flutter/material.dart';
import 'package:news/home_view/model/news_model.dart';

class HomeHeaderCardTitle extends StatelessWidget {
  const HomeHeaderCardTitle({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Text(
        textDirection: TextDirection.rtl,
        style: Theme.of(context).textTheme.bodyLarge,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        newsModel.title);
  }
}
