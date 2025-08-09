import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Customeformfield extends StatelessWidget {
  Customeformfield({super.key,required this.selectedicon,required this.label,required this.keyboardinputType, this.suffixIcon});
  IconData? selectedicon;
  String label;
  IconData? suffixIcon;
  TextInputType keyboardinputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: selectedicon!=null ? Icon(selectedicon):null,
        suffixIcon: suffixIcon!=null ?Icon(suffixIcon):null,
        labelText:label,
      ),
      keyboardType: keyboardinputType,
    );
  }
}