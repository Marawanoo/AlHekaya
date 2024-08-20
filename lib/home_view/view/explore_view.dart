import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/home_view/widget/home_news_component_buldier.dart';
import 'package:news/widgets/text_field_widget.dart';

import '../../main_variable.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'الاستكشاف',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: mainColor),
          ),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: TextFieldWidget(
                      title: '', lable: 'بحث', icon: Iconsax.search_normal),
                ),
                HomeNewsComponentBuldier()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
