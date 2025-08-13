import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ColorsMang.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.onChange
  });

  final String hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint ?? 'Search...',
        hintStyle: GoogleFonts.inter(
          fontSize: 14.sp,
          color: ColorsMang.grey,
        ),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: ColorsMang.blue) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: ColorsMang.blue) : null,
        contentPadding: REdgeInsets.symmetric(vertical: 12, horizontal: 16),
        filled: true,
        fillColor: ColorsMang.whiteBlue,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}