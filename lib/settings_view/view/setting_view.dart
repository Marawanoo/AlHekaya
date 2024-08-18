import 'package:flutter/material.dart';
import 'package:news/main_variable.dart';
import 'package:news/settings_view/widget/setting_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'إعدادات',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: mainColor),
        ),
      ),
      body: const SingleChildScrollView(child: SettingBody()),
    );
  }
}
