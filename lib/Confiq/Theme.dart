import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/ColorsMang.dart';

abstract class ThemeManager{
  static final ThemeData light= ThemeData(
      dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: GoogleFonts.inter(color: ColorsMang.orange, fontSize: 14.sp, fontWeight: FontWeight.w500),
      ),
      primaryColor: ColorsMang.blue,
      primaryColorDark:ColorsMang.darkBlue,
      primaryColorLight:ColorsMang.blue00,
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsMang.whiteBlue,
        foregroundColor: ColorsMang.black1C,
        titleTextStyle: GoogleFonts.roboto(fontSize: 22.sp, color: ColorsMang.black1C,fontWeight: FontWeight.w400)
        ,centerTitle: true,
      ),
      scaffoldBackgroundColor: ColorsMang.white,
      bottomAppBarTheme: BottomAppBarTheme(
          color: ColorsMang.blue,
          shape: CircularNotchedRectangle()
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorsMang.white,
          unselectedItemColor: ColorsMang.white
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorsMang.blue,
        shape: StadiumBorder(
            side: BorderSide(color: ColorsMang.ofWhite, width: 4)
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          prefixIconColor:ColorsMang.grey,
          suffixIconColor: ColorsMang.grey,
          hintStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorsMang.grey,
          ) ,

          labelStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorsMang.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),

            borderSide: BorderSide(color: ColorsMang.grey, width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),

            borderSide: BorderSide(color: ColorsMang.grey, width: 1.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),

            borderSide: BorderSide(color: ColorsMang.red, width: 1.w),
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: REdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r)
            ),
            foregroundColor: ColorsMang.white,
            backgroundColor: ColorsMang.blue,
            textStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500, color: ColorsMang.white)
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: TextStyle(color: ColorsMang.blue, fontSize: 16.sp,fontWeight: FontWeight.bold,decoration: TextDecoration.underline, fontStyle: FontStyle.italic),
            foregroundColor: ColorsMang.blue),
      ),
      iconTheme: IconThemeData(
        color: ColorsMang.white,
      ),
      //cardColor: ColorsManager.whiteBlue,
      cardTheme: CardThemeData(
        color: ColorsMang.whiteBlue,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      textTheme: TextTheme(
          titleSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: ColorsMang.black1C,
          ),
          titleMedium: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
            color: ColorsMang.black1C,
          ),
          displayMedium: GoogleFonts.inter(fontSize: 16, color: ColorsMang.black),
          bodySmall: GoogleFonts.inter(color: ColorsMang.black1C, fontWeight: FontWeight.bold, fontSize: 14.sp),
          labelMedium: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsMang.black),
          labelSmall: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsMang.white),
          displaySmall: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsMang.blue
          ),
        titleLarge:GoogleFonts.inter(
      color: ColorsMang.ofWhite,
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
      ),
      ),
  );

  static final ThemeData dark= ThemeData(
      dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: GoogleFonts.inter(color: ColorsMang.ofWhite, fontSize: 14.sp, fontWeight: FontWeight.w500),
          menuStyle: MenuStyle(backgroundColor: WidgetStateProperty.all(ColorsMang.darkBlue),  )
      ),
      primaryColor: ColorsMang.darkBlue,
      primaryColorLight:ColorsMang.blue,
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsMang.darkBlue,
        foregroundColor: ColorsMang.blue,
        titleTextStyle: GoogleFonts.roboto(fontSize: 22.sp,color: ColorsMang.blue,fontWeight: FontWeight.w400)
        ,centerTitle: true,
      ),
      scaffoldBackgroundColor: ColorsMang.darkBlue,
      bottomAppBarTheme: BottomAppBarTheme(
          color: ColorsMang.darkBlue,
          shape: CircularNotchedRectangle()
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorsMang.ofWhite,
          unselectedItemColor: ColorsMang.ofWhite
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorsMang.darkBlue,
        shape: StadiumBorder(
            side: BorderSide(color: ColorsMang.ofWhite, width: 4)
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: ColorsMang.ofWhite,
          suffixIconColor: ColorsMang.ofWhite,
          hintStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorsMang.blue,
          ) ,

          labelStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorsMang.ofWhite,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),

            borderSide: BorderSide(color: ColorsMang.blue, width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),

            borderSide: BorderSide(color: ColorsMang.blue, width: 1.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),

            borderSide: BorderSide(color: ColorsMang.red, width: 1.w),
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: REdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r)
            ),
            foregroundColor: ColorsMang.white,
            backgroundColor: ColorsMang.blue,
            textStyle: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500, color: ColorsMang.white)
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            textStyle: TextStyle(color: ColorsMang.blue, fontSize: 16.sp,fontWeight: FontWeight.bold,decoration: TextDecoration.underline, fontStyle: FontStyle.italic),
            foregroundColor: ColorsMang.blue),
      ),
      iconTheme: IconThemeData(
        color: ColorsMang.ofWhite,
      ),
      //cardColor: ColorsManager.ofWhite,
      cardTheme: CardThemeData(
        color: ColorsMang.darkBlue,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),

      textTheme: TextTheme(
          titleSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: ColorsMang.ofWhite,
          ),
          displayMedium: GoogleFonts.inter(fontSize: 16, color: ColorsMang.ofWhite),
          titleMedium: GoogleFonts.inter(
            fontSize: 24.sp,
            fontWeight: FontWeight.w500,
            color: ColorsMang.ofWhite,
          ),
          titleLarge:GoogleFonts.inter(
            color: ColorsMang.ofWhite,
            fontSize: 30.sp,
            fontWeight: FontWeight.w500,
          ),
          bodySmall: GoogleFonts.inter(color: ColorsMang.ofWhite, fontWeight: FontWeight.bold, fontSize: 14.sp),
          labelMedium: GoogleFonts.inter(fontSize: 20.sp, fontWeight: FontWeight.bold, color: ColorsMang.ofWhite),
          labelSmall: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsMang.ofWhite),
          displaySmall: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.bold, color: ColorsMang.darkBlue)
      )

  );
}
class ThemeController {
  static ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);
  static void changeTheme(String value) {
    if (value == 'Light')
    {
      themeMode.value = ThemeMode.light;
    } else if (value == 'Dark') {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.system;
    }
  }
}