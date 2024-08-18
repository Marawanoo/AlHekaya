import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/model/news_model.dart';

import '../main_variable.dart';
import 'icon_text.dart';

class NewsComponent extends StatelessWidget {
  const NewsComponent(
      {super.key, required this.newsModel, required this.category});
  final NewsModel newsModel;
  final String category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(detailsView),
      child: Stack(
        children: [
          Container(
            height: 125,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(top: space),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xfff9f9f9)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '  أخبار:$category',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        height: space / 4,
                      ),
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        newsModel.author,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: secondMainColor),
                      ),
                      Text(
                        textDirection: TextDirection.rtl,
                        maxLines: 2,
                        newsModel.title,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: secondMainColor),
                      ),
                      const SizedBox(
                        height: space / 2,
                      ),
                      IconText(
                        title: newsModel.getTimeAgo(newsModel.publishedAt),
                        icon: Iconsax.clock,
                        color: const Color(0xffb3b5bd),
                      )
                    ],
                  ),
                ),
                Card(
                    clipBehavior: Clip.hardEdge,
                    child: newsModel.image == ''
                        ? Image.asset(
                            fit: BoxFit.fill,
                            width: 100,
                            height: 100,
                            'assets/images/350128296_675694891049596_7342086158320602888_n.png')
                        : Image.network(newsModel.image)),
              ],
            ),
          ),
          const Positioned(
              left: 10,
              top: 20,
              child: Icon(
                size: 20,
                Icons.bookmark_border,
                color: mainColor,
              ))
        ],
      ),
    );
  }
}
