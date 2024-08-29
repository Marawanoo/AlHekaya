import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/core/api/dio_consumer.dart';
import 'package:news/home_view/controller/news_controller.dart';
import 'package:news/home_view/widget/explore_news_component_buldier.dart';
import 'package:news/widgets/text_field_widget.dart';

import '../../main_variable.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController textEditingController = TextEditingController();
    NewsController controller =
        Get.put(NewsController(apiConsumer: DioConsumer(Dio())));
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFieldWidget(
                      textAlign: TextAlign.end,
                      height: 80,
                      textEditingController: textEditingController,
                      title: '',
                      lable: 'بحث',
                      icon: Iconsax.search_normal,
                      functionSaved: (value) {
                        if (formKey.currentState!.validate()) {
                          controller.getSearchNews('الكل', value!);
                          formKey.currentState!.save();
                        }
                      },
                      valditorText: 'الرجاء إدخال مصطلح البحث',
                    ),
                  ),
                ),
                const ExploreNewsComponentBuldier(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
