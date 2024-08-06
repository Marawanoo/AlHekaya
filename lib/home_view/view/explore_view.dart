import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/widget/explore_categorie_list.dart';
import 'package:news/home_view/widget/home_title_bar.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/bar_navigation_widgets.dart';
import 'package:news/widgets/elevated_button_widget.dart';
import 'package:news/widgets/news_component.dart';
import 'package:news/widgets/text_field_widget.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: TextFieldWidget(
                    title: '', lable: 'Search', icon: Iconsax.search_normal),
              ),
              SizedBox(
                height: space,
              ),
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    height: 1.3),
              ),
              SizedBox(
                height: space,
              ),
              ExploreCategorieList(
                categorie: ['سياسة', 'رياضة', 'اعمال', 'الجميع'],
              ),
              SizedBox(
                height: space,
              ),
              ExploreCategorieList(
                categorie: ['آخر', 'موضة', 'تكنولوجيا', 'الصحة'],
              ),
              SizedBox(
                height: space,
              ),
              SizedBox(height: 25, child: HomeTitleBar(title: 'الشائع')),
              NewsComponent(),
              NewsComponent(),
              NewsComponent()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BarNavigationWidgets(
        barIndex: 2,
        barSelect: mainColor,
      ),
    );
  }
}
