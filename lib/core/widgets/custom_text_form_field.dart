import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors_manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
     this.label,
    this.prefixIcon,
    this.prefixIconColor = ColorsManager.grey,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.hint,
    this.maxLines = 1,
  });

  final String?label;
  final String? hint;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color prefixIconColor;
  final int maxLines ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.displayMedium,
      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        prefixIcon:
            prefixIcon != null
                ? Icon(prefixIcon,)
                : null,
        suffixIcon:
            suffixIcon != null
                ? Icon(suffixIcon, )
                : null,
      ),
    );
  }
}
