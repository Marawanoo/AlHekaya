import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/controller/bookmark_controller.dart';
import 'package:news/home_view/model/news_model.dart';
import 'package:news/widgets/icon_text.dart';

import '../../main_variable.dart';

class HomeArthurLable extends StatelessWidget {
  const HomeArthurLable(
      {super.key, required this.newsModel, required this.category});
  final NewsModel newsModel;
  final String category;
  @override
  Widget build(BuildContext context) {
    final BookmarkController controller = Get.put(BookmarkController());
    String relativeTime = newsModel.getTimeAgo(newsModel.publishedAt);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Align(
              alignment: Alignment.centerLeft,
              child: Obx(
                () => IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: Icon(
                    controller.bookmarks.containsKey(newsModel.id)
                        ? Icons.bookmark
                        : Icons.bookmark_border,
                    color: mainColor,
                    size: 25,
                  ),
                  onPressed: () {
                    controller.save(newsModel, category);
                  },
                ),
              )),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 100,
              child: Text(
                textAlign: TextAlign.start,
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
          width: space - 10,
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
