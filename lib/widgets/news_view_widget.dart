import 'package:flutter/material.dart';

import 'package:news/widgets/news_widget.dart';

class NewsViewWidget extends StatelessWidget {
  const NewsViewWidget({super.key, required this.articles});
  final List articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          (context, index) => NewsWidget(
                articlesModel: articles[index],
              ),
          childCount: articles.length),
    );
  }
}
