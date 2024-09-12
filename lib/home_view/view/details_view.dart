import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/model/news_model.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/app_bar_icon.dart';
import 'package:news/widgets/icon_text.dart';

import '../controller/bookmark_controller.dart';

class DetailsView extends StatelessWidget {
  const DetailsView(
      {super.key, required this.newsModel, required this.category});
  final NewsModel newsModel;
  final String category;

  @override
  Widget build(BuildContext context) {
    final BookmarkController bookmarkController = Get.put(BookmarkController());
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  'assets/images/350128296_675694891049596_7342086158320602888_n.png',
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Obx(
                    () => AppBarIcon(
                      icon:
                          bookmarkController.bookmarks.containsKey(newsModel.id)
                              ? Icons.bookmark
                              : Icons.bookmark_border,
                      function: () =>
                          bookmarkController.save(newsModel, category),
                    ),
                  ),
                ),
              ],
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: AppBarIcon(
                  icon: Icons.chevron_left,
                  function: () {
                    Get.back();
                  },
                ),
              ),
              backgroundColor: Colors.white,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  textDirection: TextDirection.rtl,
                  newsModel.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        iconSize: 15,
                        textSize: 14,
                        title: newsModel.getTimeAgo(newsModel.publishedAt),
                        icon: Iconsax.clock,
                        color: Colors.grey),
                    Text(
                      newsModel.author,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: newsModel.image == ''
                        ? Image.asset(
                            'assets/images/350128296_675694891049596_7342086158320602888_n.png',
                            height: 200,
                          )
                        : Image.network(newsModel.image)),
              ),
              const SizedBox(
                height: space,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  newsModel.description,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
