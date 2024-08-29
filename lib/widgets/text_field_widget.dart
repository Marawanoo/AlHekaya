import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    required this.title,
    required this.lable,
    required this.icon,
    this.height = 60,
    this.functionSaved,
    this.textEditingController,
    this.textAlign = TextAlign.start,
    required this.valditorText,
    this.isPassword = false,
  });
  final String title;
  final String lable;
  final IconData icon;
  final double height;
  final void Function(String?)? functionSaved;
  final TextEditingController? textEditingController;
  final TextAlign textAlign;
  final String valditorText;
  final bool isPassword;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        widget.title == ''
            ? const SizedBox(
                height: 0,
              )
            : Text(
                widget.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(height: 2.5),
              ),
        SizedBox(
          height: widget.height,
          child: TextFormField(
            obscureText: widget.isPassword && isPasswordVisible,
            onSaved: widget.functionSaved,
            textAlign: widget.textAlign,
            maxLines: 1,
            controller: widget.textEditingController,
            onFieldSubmitted: widget.functionSaved,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return widget.valditorText;
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
                prefixIcon: widget.isPassword
                    ? IconButton(
                        icon: Icon(
                          isPasswordVisible ? Iconsax.eye_slash : Iconsax.eye,
                          size: 18,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        })
                    : null,
                suffixIcon: Icon(
                  widget.icon,
                  color: Colors.grey,
                  size: 18,
                ),
                labelText: widget.lable,
                labelStyle: Theme.of(context).textTheme.labelMedium,
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
        ),
      ],
    );
  }
}
