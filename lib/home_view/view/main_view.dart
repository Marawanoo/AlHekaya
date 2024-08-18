import 'package:flutter/material.dart';
import 'package:news/home_view/view/bookmark_view.dart';
import 'package:news/home_view/view/explore_view.dart';
import 'package:news/home_view/view/home_view.dart';
import 'package:news/settings_view/view/setting_view.dart';

import '../../widgets/bar_navigation_widgets.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  @override
  State<MainView> createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        reverse: true,
        children: const [
          HomeView(),
          ExploreView(),
          BookmarkView(),
          SettingView()
        ],
      ),
      bottomNavigationBar: BarNavigationWidgets(
        pageController: pageController,
      ),
    );
  }
}
