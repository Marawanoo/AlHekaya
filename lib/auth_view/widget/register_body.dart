import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../main_variable.dart';
import '../../widgets/elevated_button_widget.dart';
import '../../widgets/text_field_widget.dart';
import 'auth_sign_lable.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 125),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
          color: Colors.white,
        ),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height - 125,
        child: const Column(children: [
          SizedBox(
            height: space / 2,
          ),
          TextFieldWidget(
            title: 'الاسم الأول',
            lable: 'Ahmed',
            icon: Iconsax.personalcard,
          ),
          TextFieldWidget(
            title: 'الاسم الأخير',
            lable: 'Mohamed',
            icon: Iconsax.personalcard,
          ),
          TextFieldWidget(
            title: 'البريد الإلكتروني',
            lable: '  Ahmed@1234.com',
            icon: Iconsax.sms,
          ),
          TextFieldWidget(
            title: 'كلمة المرور',
            lable: 'كلمة مرورك',
            icon: Iconsax.lock,
          ),
          SizedBox(
            height: space,
          ),
          TextFieldWidget(
            title: 'تأكيد كلمة المرور',
            lable: 'كلمة مرورك',
            icon: Iconsax.lock,
          ),
          SizedBox(
            height: space * 3,
          ),
          ElevatedBottomWidget(title: 'إنشاء حساب', color: mainColor),
          SizedBox(
            height: space,
          ),
          AuthSignLable(
            buttonText: 'تسجيل الدخول',
            title: 'هل لديك حساب بالفعل؟ ',
          )
        ]));
  }
}
