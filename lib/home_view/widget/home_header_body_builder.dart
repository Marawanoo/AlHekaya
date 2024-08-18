import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news/core/api/dio_consumer.dart';
import 'package:news/home_view/controller/news_controller.dart';
import 'package:news/home_view/widget/home_header_body_card.dart';

import '../../main_variable.dart';

class HomeHeaderBodyBuilder extends StatelessWidget {
  const HomeHeaderBodyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<NewsController>(
        init: NewsController(apiConsumer: DioConsumer(Dio())),
        builder: (controller) {
          if (controller.isLoading.value) {
            return Center(
              child: LoadingAnimationWidget.inkDrop(color: mainColor, size: 25),
            );
          } else if (controller.topArticlesList.isEmpty) {
            return const Center(
              child: Text('لا توجد بيانات متاحة'),
            );
          } else {
            return ListView.builder(
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.topArticlesList.length,
              itemBuilder: (context, index) => HomeHeaderBodyCard(
                newsModel: controller.topArticlesList[index],
              ),
            );
          }
        });
  }
}
