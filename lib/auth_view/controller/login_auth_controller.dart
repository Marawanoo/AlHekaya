import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../main_variable.dart';

class LoginAuthController extends GetxController {
  signIn(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Get.offAndToNamed(mainView);
      Get.defaultDialog(title: 'تنبيه', middleText: 'تم تسجيل المستخدم بنجاح');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
            backgroundColor: Colors.white,
            title: 'تنبيه',
            middleText: 'لم يتم العثور على مستخدم لهذا البريد الإلكتروني.');
      } else if (e.code == 'wrong-password') {
        Get.defaultDialog(
            title: 'تنبيه',
            middleText: 'تم إدخال كلمة مرور خاطئة لهذا المستخدم.');
      }
      {
        Get.defaultDialog(title: 'تنبيه', middleText: 'حدث خطأ:$e');
      }
    } catch (e) {
      Get.defaultDialog(title: 'تنبيه', middleText: e.toString());
    }
  }

  resetPassword(String emailAddress) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);

      Get.defaultDialog(
          title: 'تنبيه',
          middleText:
              "تم إرسال بريد إلكتروني لإعادة تعيين كلمة المرور إلى $emailAddress.");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.defaultDialog(
            title: 'تنبيه',
            middleText: 'لا يوجد مستخدم مسجل بهذا البريد الإلكتروني.');
      } else if (e.code == 'invalid-email') {
        Get.defaultDialog(
            title: 'تنبيه', middleText: 'البريد الإلكتروني المدخل غير صالح.');
      } else {
        Get.defaultDialog(
            title: 'تنبيه', middleText: 'حدث خطأ غير متوقع: ${e.message}');
      }
    } catch (e) {
      Get.defaultDialog(
          title: 'تنبيه',
          middleText: "فشل في إرسال بريد إعادة تعيين كلمة المرور: $e");
    }
  }
}
