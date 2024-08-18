import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:news/home_view/controller/news_controller.dart';
import 'package:news/main_variable.dart';

import '../../widgets/news_component.dart';

class HomeNewsComponentBuldier extends StatelessWidget {
  const HomeNewsComponentBuldier({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<NewsController>(builder: (controller) {
      if (controller.isLoading.value) {
        return Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: LoadingAnimationWidget.inkDrop(color: mainColor, size: 25),
          ),
        );
      } else if (controller.generalArticlesList.isEmpty) {
        return const Center(
          child: Text('لا توجد بيانات متاحة'),
        );
      } else {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.generalArticlesList.length,
          itemBuilder: (context, index) => NewsComponent(
            newsModel: controller.generalArticlesList[index],
            category: controller.category,
          ),
        );
      }
    });
  }
}
