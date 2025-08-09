import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/ColorsMang.dart';
import '../../core/ImagesManger.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.h,
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        image: DecorationImage(
          image: AssetImage(ImagesManger.SportEvent),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
        ),
      ),
      child: Padding(
        padding: REdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: REdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
                child: Column(
                  children: [
                    Text(
                      "21",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: ColorsMang.LightBlue,
                      ),
                    ),
                    Text(
                      "Sep",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                        color: ColorsMang.LightBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              padding: REdgeInsets.all(12),
              decoration: BoxDecoration(
                color: ColorsMang.White,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
              ),
              child: Row(
                children :[
                  Expanded(child: Text("This is a Sport Event  ", style: GoogleFonts.inter(fontSize: 17.sp, fontWeight: FontWeight.w700, color: ColorsMang.LightBlue,),)),
                  SizedBox(width: 100.w,),
                  Icon(Icons.favorite_border),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
