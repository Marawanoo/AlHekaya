import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:news/auth_view/controller/auth_password_controller.dart';
import 'package:news/main_variable.dart';

class RegisterAuthController extends GetxController {
  createUser(
    String emailAddress,
    String password,
  ) async {
    String? passwordError = AuthPasswordController().validatePassword(password);
    if (passwordError != null) {
      Get.defaultDialog(title: 'تنبيه', middleText: passwordError);
      return;
    }
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      Get.toNamed(mainView);
      Get.defaultDialog(title: 'تنبيه', middleText: 'تم إنشاء المستخدم بنجاح');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.defaultDialog(
            title: 'تنبيه', middleText: 'كلمة المرور المقدمة ضعيفة جدًا.');
      } else if (e.code == 'email-already-in-use') {
        Get.defaultDialog(
            title: 'تنبيه',
            middleText: 'الحساب موجود بالفعل لهذا البريد الإلكتروني.');
      } else {
        Get.defaultDialog(title: 'تنبيه', middleText: 'حدث خطأ:$e');
      }
    } catch (e) {
      Get.defaultDialog(title: 'تنبيه', middleText: e.toString());
    }
  }

  addUser(String firstName, String lastName, String email) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    try {
      users.add(
          {'first_name': firstName, 'last_name': lastName, 'email': email});
    } catch (e) {
      Get.defaultDialog(title: 'تنبيه', middleText: e.toString());
    }
  }
}
