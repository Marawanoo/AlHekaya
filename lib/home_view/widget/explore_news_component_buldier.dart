import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../main_variable.dart';
import '../../widgets/news_component.dart';
import '../controller/news_controller.dart';

class ExploreNewsComponentBuldier extends StatelessWidget {
  const ExploreNewsComponentBuldier({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<NewsController>(builder: (controller) {
      if (controller.isLoadingSearchNews.value) {
        return Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Center(
            child: LoadingAnimationWidget.inkDrop(color: mainColor, size: 25),
          ),
        );
      } else if (controller.searchArticlesList.isEmpty) {
        return const Center(
          child: Text('لا توجد بيانات متاحة'),
        );
      } else {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: controller.searchArticlesList.length,
          itemBuilder: (context, index) => NewsComponent(
            newsModel: controller.searchArticlesList[index],
            category: controller.category,
          ),
        );
      }
    });
  }
}
