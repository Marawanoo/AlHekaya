import 'package:flutter/material.dart';

import 'register_password_lable_info.dart';

class RegisterPasswordInfo extends StatelessWidget {
  const RegisterPasswordInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RegisterPasswordLableInfo(title: '• حرف كبير واحد'),
            RegisterPasswordLableInfo(title: '• حرف صغير واحد')
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RegisterPasswordLableInfo(title: '• الحد الأدنى 8 أحرف'),
            RegisterPasswordLableInfo(title: '• حرف خاص واحد'),
            RegisterPasswordLableInfo(title: '• رقم واحد')
          ],
        ),
      ],
    );
  }
}
