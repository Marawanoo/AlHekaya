import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/elevated_button_widget.dart';
import 'package:news/widgets/text_field_widget.dart';

import '../controller/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    double widhtMedia = MediaQuery.of(context).size.width;

    final ProfileController profileController = Get.put(ProfileController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(gradient: gradient),
              height: heightMedia * 0.5,
              width: widhtMedia,
              padding: const EdgeInsets.only(top: 50),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(width: 200, 'assets/images/file.png'),
              ),
            ),
            Obx(() {
              if (profileController.email.value.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        SizedBox(height: heightMedia * 0.4),
                        Image.asset(
                          'assets/images/User_Not_Sign.png',
                          width: 200,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'لم تقم بتسجيل الدخول بعد',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Container(
                  margin: EdgeInsets.only(
                      top: heightMedia * 0.4, left: widhtMedia * 0.09),
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: SizedBox(
                          width: 270,
                          child: Obx(() => TextFieldWidget(
                                readOnly: true,
                                height: 40,
                                title: 'الاسم الأول',
                                lable: 'الاسم الأول',
                                icon: Iconsax.personalcard,
                                valditorText: '',
                                textEditingController: TextEditingController(
                                    text: profileController.firstName.value),
                              )),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: SizedBox(
                          width: 270,
                          child: Obx(() => TextFieldWidget(
                                readOnly: true,
                                height: 40,
                                title: 'الاسم الأخير',
                                lable: 'الاسم الأخير',
                                icon: Iconsax.personalcard,
                                valditorText: '',
                                textEditingController: TextEditingController(
                                    text: profileController.lastName.value),
                              )),
                        ),
                      ),

                      // Bind email
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: SizedBox(
                          width: 270,
                          child: Obx(() => TextFieldWidget(
                                readOnly: true,
                                height: 40,
                                title: 'البريد الإلكتروني',
                                lable: 'البريد الإلكتروني',
                                icon: Iconsax.sms,
                                valditorText: '',
                                textEditingController: TextEditingController(
                                    text: profileController.email.value),
                              )),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 15),
                        child: ElevatedBottomWidget(
                          function: () {
                            profileController.resetEmail();
                          },
                          title: 'تغير كلمة المرور',
                          color: mainColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 15),
                        child: ElevatedBottomWidget(
                          function: () {
                            profileController.signOut();
                          },
                          title: 'تسجيل الخروج',
                          color: secondMainColor,
                        ),
                      ),
                    ],
                  ),
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
