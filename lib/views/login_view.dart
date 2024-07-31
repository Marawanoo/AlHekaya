import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/elevated_button_widget.dart';
import 'package:news/widgets/header_sign.dart';
import 'package:news/widgets/lable_sign.dart';
import 'package:news/widgets/text_field_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const HeaderSign(),
            Container(
              margin: const EdgeInsets.only(top: 250),
              padding: const EdgeInsets.symmetric(horizontal: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
                color: Colors.white,
              ),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height - 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: mainColor,
                        height: 1),
                  ),
                  const SizedBox(
                    height: space * 2,
                  ),
                  const TextFieldWidget(
                    title: 'البريد الإلكتروني',
                    lable: '  Ahmed@1234.com',
                    icon: Icon(
                      Iconsax.sms,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  const SizedBox(
                    height: space - 5,
                  ),
                  const TextFieldWidget(
                    title: 'كلمة المرور',
                    lable: 'كلمة مرورك',
                    icon: Icon(
                      Iconsax.lock,
                      color: Colors.grey,
                      size: 18,
                    ),
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
                      onPressed: () {},
                      child: Text('نسيت كلمة المرور؟',
                          style: Theme.of(context).textTheme.displayMedium),
                    ),
                  ),
                  const SizedBox(
                    height: space,
                  ),
                  const ElevatedBottomWidget(
                      title: 'تسجيل الدخول', color: mainColor),
                  const SizedBox(
                    height: space * 2,
                  ),
                  const LableSign(
                    buttonText: 'اشترك الآن',
                    title: 'ليس لديك حساب؟ ',
                  ),
                  const SizedBox(
                    height: space,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
