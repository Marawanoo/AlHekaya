import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookmarkController extends GetxController {
  save(BuildContext context) {
    Get.defaultDialog(
        title: 'مطلوب تسجيل دخول',
        middleText:
            'يجب أن تكون مسجل دخول لإضافة الأخبار إلى الاخبار المحفوظة.',
        textConfirm: 'تسجيل الدخول',
        textCancel: 'عمل حساب جديد');
  }
}
