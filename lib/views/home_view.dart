import 'package:flutter/material.dart';

import 'package:news/widgets/category_view_widget.dart';
import 'package:news/widgets/icon_widget.dart';
import 'package:news/widgets/news_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Row(
                children: [
                  Text(
                    'Egy',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                  Text(
                    ' News',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        color: Color(0xff247c00)),
                  ),
                ],
              ),
              Icon(Icons.notifications)
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryViewWidget(),
              ),
              SliverToBoxAdapter(
                child: IconWidget(),
              ),
              NewsViewBuilder()
            ],
          ),
        ));
  }
}
