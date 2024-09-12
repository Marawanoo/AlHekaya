import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/controller/bookmark_controller.dart';
import 'package:news/main_variable.dart';

import '../../widgets/news_component.dart';

class BookmarkView extends StatelessWidget {
  const BookmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    final BookmarkController bookmarkController = Get.find();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Iconsax.search_normal),
            Text(
              'الأخبار المحفوظة',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: mainColor),
            ),
          ],
        ),
      ),
      body: Obx(
        () {
          final List bookmarkedNews =
              bookmarkController.bookmarks.values.toList();
          return ListView.builder(
            shrinkWrap: true,
            itemCount: bookmarkedNews.length,
            itemBuilder: (context, index) {
              final newsModel = bookmarkedNews[index];
              return NewsComponent(
                newsModel: newsModel,
                category: '',
              );
            },
          );
        },
      ),
    );
  }
}
