import 'package:get/get.dart';

class AuthPasswordController extends GetxController {
  RxBool isPasswordVisible = true.obs;
  String? validatePassword(String password) {
    if (password.length < 8) {
      return 'يجب أن تكون كلمة المرور 8 أحرف على الأقل';
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد';
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد';
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'يجب أن تحتوي كلمة المرور على رقم واحد';
    }
    if (!password.contains(RegExp(r'[!@#\$&*~]'))) {
      return 'يجب أن تحتوي كلمة المرور على حرف خاص واحد';
    }
    return null;
  }

  obscureChange() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}
