import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.title,
    required this.lable,
    required this.icon,
    this.height = 45,
    this.functionSaved,
    this.controller,
    this.textAlign = TextAlign.start,
  });
  final String title;
  final String lable;
  final IconData icon;
  final double height;
  final void Function(String?)? functionSaved;
  final TextEditingController? controller;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        title == ''
            ? const SizedBox(
                height: 0,
              )
            : Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(height: 2.5),
              ),
        SizedBox(
          height: height,
          child: TextFormField(
            textAlign: textAlign,
            maxLines: 1,
            controller: controller,
            onFieldSubmitted: functionSaved,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'الرجاء إدخال مصطلح البحث';
              }
              return null;
            },
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                errorStyle: Theme.of(context).textTheme.labelMedium,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                prefixIcon: title == 'كلمة المرور'
                    ? const Icon(
                        Iconsax.eye,
                        size: 18,
                      )
                    : null,
                suffixIcon: Icon(
                  icon,
                  color: Colors.grey,
                  size: 18,
                ),
                labelText: lable,
                labelStyle: Theme.of(context).textTheme.labelMedium,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
        ),
      ],
    );
  }
}
