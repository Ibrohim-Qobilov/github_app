import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TextFormWidget extends StatelessWidget {
  final TextEditingController controller;
  // TextEditingController controller;
  Widget? prefixIcon;
  String hintText;
  TextFormWidget({
    this.prefixIcon,
    required this.hintText,
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hoverColor: Colors.white,
        focusColor: Colors.white,
        filled: true,
        fillColor: AppColor.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}