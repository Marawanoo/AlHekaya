import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/core/api/dio_consumer.dart';
import 'package:news/home_view/controller/home_elevated_bottom_controller.dart';
import 'package:news/home_view/controller/news_controller.dart';

import '../../main_variable.dart';
import '../../widgets/elevated_button_widget.dart';

class HomeNewsListBar extends StatelessWidget {
  const HomeNewsListBar({super.key});

  @override
  Widget build(BuildContext context) {
    final newsController =
        Get.put(NewsController(apiConsumer: DioConsumer(Dio())));

    const List<String> itemBar = [
      'الكل',
      'الرياضة',
      'علوم',
      'صحة',
      'ترفيه',
      'اقتصاد',
      'تكنولوجيا'
    ];
    const List<String> category = [
      'general',
      'sports',
      'science',
      'health',
      'entertainment',
      'business',
      'technology'
    ];

    return SizedBox(
      height: 30,
      child: GetBuilder<HomeElevatedBottomController>(
        init: HomeElevatedBottomController(),
        builder: (controller) => ListView.builder(
          itemCount: itemBar.length,
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => Container(
            width: 75,
            height: 30,
            margin: const EdgeInsets.only(right: 10),
            child: ElevatedBottomWidget(
                size: 14,
                title: itemBar[index],
                color: controller.selectItem == index
                    ? mainColor
                    : secondMainColor,
                function: () {
                  controller.selectCategory(index);
                  newsController.getGeneralNews(
                      category[index], itemBar[index]);
                }),
          ),
        ),
      ),
    );
  }
}
