import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:news/settings_view/widget/setting_body_info.dart';

import '../../main_variable.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(
          height: space * 2,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          child: Text('حساب'),
        ),
        SettingBodyInfo(
          title: 'تسجيل الدخول إلى حساب الحكاية الخاص بك',
          function: () => Get.toNamed(loginView),
        ),
        SettingBodyInfo(
            title: 'حساب الحكاية الخاص بك',
            function: () => Get.toNamed(profileView)),
        const SizedBox(
          height: space * 2,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          child: Text('عام'),
        ),
        SettingBodyInfo(
            title: 'إرسال الملاحظات', function: () => Get.toNamed(generalView)),
        SettingBodyInfo(
            title: 'سياسة الخصوصية', function: () => Get.toNamed(generalView)),
        SettingBodyInfo(
            title: 'شروط الاستخدام', function: () => Get.toNamed(generalView)),
      ],
    );
  }
}
