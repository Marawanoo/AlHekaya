import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../main_variable.dart';

class ProfileController extends GetxController {
  RxString firstName = ''.obs;
  RxString lastName = ''.obs;
  RxString email = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {
    try {
      User? currentUser = FirebaseAuth.instance.currentUser;

      if (currentUser != null) {
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('users')
            .doc(currentUser.uid)
            .get();

        if (userDoc.exists) {
          firstName.value = userDoc.get('first_name');
          lastName.value = userDoc.get('last_name');
          email.value = userDoc.get('email');
        }
      } else {
        Get.defaultDialog(
            title: 'تنبيه', middleText: 'لم يتم العثور على المستخدم');
      }
    } catch (e) {
      Get.defaultDialog(title: 'تنبيه', middleText: e.toString());
    }
  }

  signOut() async {
    try {
      await FirebaseAuth.instance.signOut();

      Get.offAllNamed(mainView);
      Get.defaultDialog(
        title: 'تنبيه',
        middleText: 'تم تسجيل الخروج بنجاح!',
      );
    } catch (e) {
      Get.defaultDialog(
        title: 'خطأ',
        middleText: 'حدث خطأ أثناء تسجيل الخروج. يرجى المحاولة مرة أخرى.',
      );
    }
  }

  resetEmail() async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email.string);
    try {
      Get.defaultDialog(
        title: 'تنبيه',
        middleText:
            'تم إرسال رابط إعادة تعيين كلمة المرور إلى البريد الإلكتروني: $email',
      );
    } catch (e) {
      Get.defaultDialog(
        title: 'خطأ',
        middleText: 'حدث خطأ أثناء محاولة إرسال بريد إعادة تعيين كلمة المرور.',
      );
    }
  }
}
