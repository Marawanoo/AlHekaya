import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/auth_view/widget/auth_header_text.dart';

import '../../main_variable.dart';
import '../../widgets/elevated_button_widget.dart';
import 'auth_sign_lable.dart';
import '../../widgets/text_field_widget.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const AuthHeaderText(
            title: 'تسجيل الدخول',
          ),
          const SizedBox(
            height: space * 2,
          ),
          const TextFieldWidget(
            title: 'البريد الإلكتروني',
            lable: '  Ahmed@1234.com',
            icon: Iconsax.sms,
          ),
          const SizedBox(
            height: space - 5,
          ),
          const TextFieldWidget(
            title: 'كلمة المرور',
            lable: 'كلمة مرورك',
            icon: Iconsax.lock,
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
                  style: Theme.of(context).textTheme.titleSmall),
            ),
          ),
          const SizedBox(
            height: space,
          ),
          const ElevatedBottomWidget(title: 'تسجيل الدخول', color: mainColor),
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
    );
  }
}
