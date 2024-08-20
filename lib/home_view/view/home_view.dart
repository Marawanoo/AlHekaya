import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/core/api/dio_consumer.dart';
import 'package:news/home_view/controller/news_controller.dart';
import 'package:news/home_view/widget/home_app_bar.dart';
import 'package:news/home_view/widget/home_header_body_builder.dart';
import 'package:news/home_view/widget/home_news_component_buldier.dart';
import 'package:news/home_view/widget/home_news_list_bar.dart';
import 'package:news/home_view/widget/home_title_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final newsController =
        Get.put(NewsController(apiConsumer: DioConsumer(Dio())));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await newsController.getTopNews();
          await newsController.getGeneralNews('world', 'الكل');
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: HomeAppBar(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: HomeTitleBar(
                  title: 'أهم الأخبار',
                ),
              ),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  child: const HomeHeaderBodyBuilder()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: HomeTitleBar(
                  title: 'استكشاف',
                ),
              ),
              const HomeNewsListBar(),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: const HomeNewsComponentBuldier()),
            ],
          ),
        ),
      ),
    );
  }
}

//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 15),
//           child: const CustomScrollView(
//             slivers: [
//               SliverToBoxAdapter(
//                 child: CategoryViewWidget(),
//               ),
//               SliverToBoxAdapter(
//                 child: IconWidget(),
//               ),
//               NewsViewBuilder()
//             ],
//           ),
