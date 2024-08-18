import 'package:flutter/material.dart';
import 'package:news/home_view/widget/home_app_bar.dart';
import 'package:news/home_view/widget/home_header_body_builder.dart';
import 'package:news/home_view/widget/home_news_component_buldier.dart';
import 'package:news/home_view/widget/home_news_list_bar.dart';
import 'package:news/home_view/widget/home_title_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: HomeAppBar(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: HomeTitleBar(
                title: 'أهم الأخبار',
              ),
            ),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 300,
                child: const HomeHeaderBodyBuilder()),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
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
