import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/model/news_model.dart';
import 'package:news/widgets/icon_text.dart';

import '../../main_variable.dart';

class HomeArthurLable extends StatelessWidget {
  const HomeArthurLable({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    String relativeTime = newsModel.getTimeAgo(newsModel.publishedAt);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              color: mainColor,
              Icons.bookmark_border,
              size: 25,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                textDirection: TextDirection.rtl,
                newsModel.author,
                style: Theme.of(context).textTheme.labelLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconText(
              icon: Iconsax.clock,
              title: relativeTime,
              color: const Color(0xff1b2047),
            )
          ],
        ),
        const SizedBox(
          width: space / 2,
        ),
        const CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(
              'assets/images/350128296_675694891049596_7342086158320602888_n.png'),
        ),
      ],
    );
  }
}
