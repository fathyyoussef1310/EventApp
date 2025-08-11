import 'package:eventapp/core/ImagesManger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/ColorsMang.dart';
typedef Onchange = void Function(String?);
class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  List<String>ThemeMenu=["Light","Dark"];
  List<String>LangMenu=["Arabic","English"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: REdgeInsets.symmetric(horizontal: 20.sp, vertical: 20.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.r),
              ),
              color: ColorsMang.LightBlue,
            ),
            child: Row(
              children: [
                Image.asset(
                  ImagesManger.profileScreen,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 4.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UserName",
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        color: ColorsMang.White,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "UserGmail999@gmail.com",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorsMang.White,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 5.sp),
          Padding(
            padding: REdgeInsets.all(17.0),
            child: buildDropDown(
              labelText: "Language",
              menuitems: LangMenu,
              onChange: (val) {
                LangMenu[0]=val!;
                setState(() {
                });
              },
            ),
          ),
          Padding(
            padding: REdgeInsets.all(15.0),
            child: buildDropDown(
              labelText: "Theme",
              menuitems: ThemeMenu,
              onChange: (val) {
                ThemeMenu[0]=val!;
                setState(() {
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDropDown({
    required String labelText,
    required List<String> menuitems,
    required Onchange onChange,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText, style: Theme.of(context).textTheme.labelSmall),
        SizedBox(height: 5.h),
        Container(
          padding: REdgeInsets.all(4.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: ColorsMang.LightBlue,
              width: 1.w,
            ),
          ),
          child: Row(
            children: [
              Text(
                menuitems[0],
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Spacer(),
              DropdownButton<String>(
                items: menuitems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: onChange,
                underline: Container(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
