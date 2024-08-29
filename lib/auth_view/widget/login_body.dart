import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/auth_view/controller/login_auth_controller.dart';
import 'package:news/auth_view/widget/auth_header_text.dart';

import '../../main_variable.dart';
import '../../widgets/elevated_button_widget.dart';
import '../../widgets/text_field_widget.dart';
import 'auth_sign_lable.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final GlobalKey<FormState> dialogKey = GlobalKey<FormState>();
    final LoginAuthController controller = Get.put(LoginAuthController());
    String? emailAddress;
    String? password;
    return Container(
      margin: const EdgeInsets.only(top: 250),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
        color: Colors.white,
      ),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height - 250,
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AuthHeaderText(
              title: 'تسجيل الدخول',
            ),
            const SizedBox(
              height: space * 2,
            ),
            TextFieldWidget(
              title: 'البريد الإلكتروني',
              lable: '  Ahmed@1234.com',
              icon: Iconsax.sms,
              functionSaved: (value) => emailAddress = value,
              valditorText: 'الرجاء إدخال البريد الإلكتروني',
            ),
            const SizedBox(
              height: space - 5,
            ),
            TextFieldWidget(
              title: 'كلمة المرور',
              lable: 'كلمة مرورك',
              icon: Iconsax.lock,
              functionSaved: (value) => password = value,
              valditorText: 'الرجاء إدخال كلمة المرور',
              isPassword: true,
            ),
            const SizedBox(
              height: space - 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  Get.defaultDialog(
                      backgroundColor: Colors.white,
                      title: 'ادخل البريد الالكتروني',
                      textConfirm: 'ارسال',
                      buttonColor: mainColor,
                      content: Form(
                        key: dialogKey,
                        child: TextFieldWidget(
                            functionSaved: (value) => emailAddress = value,
                            title: '',
                            lable: '  Ahmed@1234.com',
                            icon: Iconsax.sms,
                            valditorText: 'الرجاء إدخال البريد الإلكتروني'),
                      ),
                      onConfirm: () {
                        if (dialogKey.currentState!.validate()) {
                          dialogKey.currentState!.save();
                          controller.resetPassword(emailAddress!);
                        }
                      });
                },
                child: Text('نسيت كلمة المرور؟',
                    style: Theme.of(context).textTheme.titleSmall),
              ),
            ),
            const SizedBox(
              height: space,
            ),
            ElevatedBottomWidget(
                title: 'تسجيل الدخول',
                color: mainColor,
                function: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    controller.signIn(emailAddress!, password!);
                  }
                }),
            const SizedBox(
              height: space * 2,
            ),
            const AuthSignLable(
              buttonText: 'اشترك الآن',
              title: 'ليس لديك حساب؟ ',
            ),
            const SizedBox(
              height: space,
            ),
          ],
        ),
      ),
    );
  }
}
