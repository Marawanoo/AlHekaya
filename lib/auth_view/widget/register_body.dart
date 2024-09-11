import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/auth_view/controller/register_auth_controller.dart';
import 'package:news/auth_view/widget/register_password_info.dart';

import '../../main_variable.dart';
import '../../widgets/elevated_button_widget.dart';
import '../../widgets/text_field_widget.dart';
import 'auth_sign_lable.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterAuthController controller = Get.put(RegisterAuthController());
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String? emailAddress;
    String? password;
    String? confirmPassword;
    String? firstName;
    String? lastName;

    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
            color: Colors.white,
          ),
          width: MediaQuery.sizeOf(context).width,
          child: Form(
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(children: [
              const SizedBox(
                height: space / 2,
              ),
              TextFieldWidget(
                title: 'الاسم الأول',
                lable: 'Ahmed',
                icon: Iconsax.personalcard,
                valditorText: 'الرجاء إدخال الاسم الأول',
                functionSaved: (value) {
                  firstName = value;
                },
              ),
              TextFieldWidget(
                title: 'الاسم الأخير',
                lable: 'Mohamed',
                icon: Iconsax.personalcard,
                valditorText: 'الرجاء إدخال الاسم الاخير',
                functionSaved: (value) {
                  lastName = value;
                },
              ),
              TextFieldWidget(
                title: 'البريد الإلكتروني',
                lable: '  Ahmed@1234.com',
                icon: Iconsax.sms,
                functionSaved: (value) {
                  emailAddress = value!;
                },
                valditorText: 'الرجاء إدخال البريد الإلكتروني',
              ),
              TextFieldWidget(
                title: 'كلمة المرور',
                lable: 'كلمة مرورك',
                icon: Iconsax.lock,
                functionSaved: (value) {
                  password = value!;
                },
                valditorText: 'الرجاء إدخال كلمة المرور',
                isPassword: true,
              ),
              const RegisterPasswordInfo(),
              TextFieldWidget(
                title: 'تأكيد كلمة المرور',
                lable: 'كلمة مرورك',
                icon: Iconsax.lock,
                valditorText: 'الرجاء إدخال تأكيد كلمة المرور',
                functionSaved: (value) => confirmPassword = value,
                isPassword: true,
              ),
              const SizedBox(
                height: space * 2,
              ),
              ElevatedBottomWidget(
                title: 'إنشاء حساب',
                color: mainColor,
                function: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (password == confirmPassword) {
                      controller.createUser(
                        emailAddress!,
                        password!,
                        firstName!,
                        lastName!,
                      );
                    } else {
                      Get.defaultDialog(
                        title: 'خطأ',
                        middleText: 'كلمتا المرور غير متطابقتين',
                      );
                    }
                  }
                },
              ),
              const SizedBox(
                height: space / 2,
              ),
              const AuthSignLable(
                buttonText: 'تسجيل الدخول',
                title: 'هل لديك حساب بالفعل؟ ',
              )
            ]),
          )),
    );
  }
}
