import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/widget/explore_categorie_list.dart';
import 'package:news/home_view/widget/home_title_bar.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/text_field_widget.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextFieldWidget(
                      title: '', lable: 'بحث', icon: Iconsax.search_normal),
                ),
                const SizedBox(
                  height: space,
                ),
                Text(
                  'فئات',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: space,
                ),
                const ExploreCategorieList(
                  categorie: ['سياسة', 'رياضة', 'اعمال', 'الجميع'],
                ),
                const SizedBox(
                  height: space,
                ),
                const ExploreCategorieList(
                  categorie: ['آخر', 'موضة', 'تكنولوجيا', 'الصحة'],
                ),
                const SizedBox(
                  height: space,
                ),
                const SizedBox(
                    height: 25, child: HomeTitleBar(title: 'الشائع')),
                // const NewsComponent(),
                // const NewsComponent(),
                // const NewsComponent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
