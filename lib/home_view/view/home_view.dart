import 'package:flutter/material.dart';
import 'package:news/home_view/widget/home_news_list_bar.dart';
import 'package:news/home_view/widget/home_title_bar.dart';
import 'package:news/main_variable.dart';
import 'package:news/home_view/widget/home_app_bar.dart';
import 'package:news/home_view/widget/home_header_body_builder.dart';
import 'package:news/home_view/widget/home_search_bar.dart';
import 'package:news/widgets/news_component.dart';

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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: HomeAppBar(),
              ),
              const SizedBox(
                height: space,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: HomeSearchBar(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: HomeTitleBar(
                  title: 'Top News',
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: MediaQuery.sizeOf(context).width,
                  height: 300,
                  child: const HomeHeaderBodyBuilder()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: HomeTitleBar(
                  title: 'Explore',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: HomeNewsListBar(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: NewsComponent(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: NewsComponent(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: NewsComponent(),
              ),
            ],
          ),
        ));
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
         
