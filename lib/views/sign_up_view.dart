import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/elevated_button_widget.dart';
import 'package:news/widgets/header_sign_up.dart';
import 'package:news/widgets/lable_password.dart';
import 'package:news/widgets/lable_sign.dart';
import 'package:news/widgets/text_field_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            HeaderSignUp(),
            Container(
                margin: const EdgeInsets.only(top: 125),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100)),
                  color: Colors.white,
                ),
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height - 100,
                child: const Column(children: [
                  SizedBox(
                    height: space,
                  ),
                  TextFieldWidget(
                      title: 'الاسم الأول',
                      lable: 'Ahmed',
                      icon: Icon(
                        Iconsax.personalcard,
                        size: 18,
                      )),
                  TextFieldWidget(
                      title: 'الاسم الأخير',
                      lable: 'Mohamed',
                      icon: Icon(
                        Iconsax.personalcard,
                        size: 18,
                      )),
                  TextFieldWidget(
                    title: 'البريد الإلكتروني',
                    lable: '  Ahmed@1234.com',
                    icon: Icon(
                      Iconsax.sms,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  TextFieldWidget(
                    title: 'كلمة المرور',
                    lable: 'كلمة مرورك',
                    icon: Icon(
                      Iconsax.lock,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    height: space,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LablePassword(title: '• حرف كبير واحد'),
                          LablePassword(title: '• حرف صغير واحد')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LablePassword(title: '• الحد الأدنى 8 أحرف'),
                          LablePassword(title: '• حرف خاص واحد'),
                          LablePassword(title: '• رقم واحد')
                        ],
                      ),
                    ],
                  ),
                  TextFieldWidget(
                    title: 'تأكيد كلمة المرور',
                    lable: 'كلمة مرورك',
                    icon: Icon(
                      Iconsax.lock,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  SizedBox(
                    height: space * 2,
                  ),
                  ElevatedBottomWidget(title: 'إنشاء حساب', color: mainColor),
                  SizedBox(
                    height: space,
                  ),
                  LableSign(
                    buttonText: 'تسجيل الدخول',
                    title: 'هل لديك حساب بالفعل؟ ',
                  )
                ]))
          ],
        ),
      ),
    );
  }
}
