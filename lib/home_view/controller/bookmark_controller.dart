import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:news/main_variable.dart';

class BookmarkController extends GetxController {
  save(BuildContext context) {
    Dialogs.materialDialog(
        msgAlign: TextAlign.center,
        context: context,
        msg: 'يجب أن تكون مسجل دخول لإضافة الأخبار إلى الاخبار المحفوظة.',
        title: 'مطلوب تسجيل دخول',
        actionsBuilder: (context) => [
              IconsButton(
                color: secondMainColor,
                onPressed: () {},
                text: 'عمل حساب جديد',
                iconData: Icons.app_registration,
                textStyle: const TextStyle(color: Colors.white),
                iconColor: Colors.white,
              ),
              IconsButton(
                onPressed: () {},
                text: 'تسجيل الدخول',
                iconData: Icons.login,
                color: Colors.red,
                textStyle: const TextStyle(color: Colors.white),
                iconColor: Colors.white,
              ),
            ]);
    // QuickAlert.show(
    //   headerBackgroundColor: mainColor,
    //   context: context,
    //   type: QuickAlertType.confirm,
    //   text: 'يجب أن تكون مسجل دخول لإضافة الأخبار إلى المفضلة.',
    //   title: 'مطلوب تسجيل دخول',
    //   confirmBtnText: 'Yes',
    //   cancelBtnText: 'No',
    // );
  }
}
