import 'package:flutter/material.dart';

import '../ColorsMang.dart';

class CustomTextButton extends StatelessWidget {
  String text;
  VoidCallback? onPressed;
  CustomTextButton({super.key, required this.text, this.onPressed,});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: ColorsMang.LightBlue, decoration: TextDecoration.underline,),
      ),
    );
  }
}