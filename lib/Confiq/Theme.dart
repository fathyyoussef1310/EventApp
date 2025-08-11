import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/ColorsMang.dart';

class ThemeManger {
  static const String identifier = "ThemeManger_v1";
  static final ThemeData Light = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: ColorsMang.White,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsMang.White,
      centerTitle: true,
      titleTextStyle: GoogleFonts.roboto(
        color: Colors.black,
        fontSize: 22.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: Colors.grey, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: Colors.grey, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: Colors.red, width: 1.w),
      ),
      prefixIconColor: Colors.grey,
      labelStyle: GoogleFonts.inter(
        fontSize: 16.sp,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsMang.LightBlue,
        padding: EdgeInsets.symmetric(vertical: 14.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorsMang.LightBlue,
        textStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
    textTheme: TextTheme(
      labelMedium: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.bold, color: ColorsMang.LightBlue,),
      labelSmall: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.bold, color: Colors.black,),
    ),
  );

  static final ThemeData Dark = ThemeData(
    scaffoldBackgroundColor: ColorsMang.Darkblue,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsMang.Darkblue,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 22.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey,
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: Colors.white70, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.r),
        borderSide: BorderSide(color: Colors.white, width: 1.w),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsMang.LightBlue,
        padding: EdgeInsets.symmetric(vertical: 14.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
