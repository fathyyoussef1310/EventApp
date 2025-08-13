import 'package:eventapp/core/ColorsMang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Models/catagory.dart';

class CategoryItem extends StatelessWidget
{
  final categoryModel category;
  Color selectedBackgroundColor;
  Color unselectedBackgroundColor;
  Color selectedFourBackgroundColor;
  Color unselectedFourBackgroundColor;
  bool isSelected;


   CategoryItem({super.key, required this.category,required this.selectedBackgroundColor,required this.selectedFourBackgroundColor,required this.unselectedBackgroundColor,required this.unselectedFourBackgroundColor,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: ColorsMang.white),
          color: isSelected?selectedBackgroundColor : unselectedBackgroundColor,
        ),
        child: Row(
          children:
          [
            Icon(category.icon, size: 18.sp,color: isSelected? selectedFourBackgroundColor:unselectedFourBackgroundColor),
            SizedBox(width: 8.sp),
            Text(category.name,style: GoogleFonts.inter(fontSize: 16.sp,fontWeight: FontWeight.w800,color: isSelected? selectedFourBackgroundColor:unselectedFourBackgroundColor),),
          ],
        ),
    );
  }
}
