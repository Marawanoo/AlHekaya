import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:news/main_variable.dart';
import 'package:news/widgets/text_field_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    double widhtMedia = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(gradient: gradient),
              height: heightMedia * 0.5,
              width: widhtMedia,
              padding: const EdgeInsets.only(top: 25),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(width: 200, 'assets/images/file.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: heightMedia * 0.4, left: widhtMedia * 0.09),
              width: 300,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: SizedBox(
                      width: 270,
                      child: TextFieldWidget(
                        height: 40,
                        title: 'First Name',
                        lable: 'First Name',
                        icon: Iconsax.personalcard,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: SizedBox(
                      width: 270,
                      child: TextFieldWidget(
                        height: 40,
                        title: 'First Name',
                        lable: 'First Name',
                        icon: Iconsax.personalcard,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: SizedBox(
                      width: 270,
                      child: TextFieldWidget(
                        height: 40,
                        title: 'First Name',
                        lable: 'First Name',
                        icon: Iconsax.personalcard,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
