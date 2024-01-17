// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ncm/common/app_colors.dart';

class CustomField extends StatelessWidget {
  final String text;
  final bool obscureText;
  const CustomField({
    Key? key,
    required this.text,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorsApp.mainColor.withOpacity(0.08),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          hintStyle: TextStyle(fontSize: 14)
        ),
      ),
    );
  }
}
