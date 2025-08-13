import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/Models/catagory.dart';
import 'package:eventapp/core/ColorsMang.dart';
import 'package:eventapp/core/ImagesManger.dart';
import 'package:eventapp/core/Widgets/custoumTextButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/CustomTabBar.dart';

class Createevent extends StatelessWidget {
  const Createevent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColorLight
        ),
        centerTitle: true,
        title: Text(
          "Create Event",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).primaryColorLight,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(ImagesManger.SportEvent),
              SizedBox(height: 10.h),
              Customtabbar(
                categorymodels: categoryModel.catagoriesnoall, selectedBackgroundColor: Theme.of(context).secondaryHeaderColor,unselectedBackgroundColor: Theme.of(context).primaryColor,selectedFourBackgroundColor: ColorsMang.blue,unselectedFourBackgroundColor: ColorsMang.whiteBlue,),
              SizedBox(height: 15.h),
              SizedBox(
                child: Text("Title",style:Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ColorsMang.grey
                ),),
                ),
              SizedBox(height: 8.h),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                  prefixIcon: Icon(Icons.edit, color:Theme.of(context).primaryColorDark),
                  hintText: "Event Title",
                  hintStyle: GoogleFonts.inter(color: Colors.grey, fontSize: 14.sp),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 1.5),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              SizedBox(height: 5.h,),
              Text("Description",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: ColorsMang.grey
              ),
              ),
              SizedBox(height: 3.h,),
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: "Event Description",
                  hintStyle: GoogleFonts.inter(color: Colors.grey, fontSize: 14.sp),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26, width: 1.5),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              SizedBox(height: 3.h,),
              Row(
                children: [
                  Icon(Icons.date_range_rounded),
                  SizedBox(width: 4.w,),
                  Text("Event Date"),
                  Spacer(),
                  CustomTextButton(text: "Choose Date",onPressed: (){
                    showDatePicker(context: context, firstDate: DateTime.now(), lastDate:DateTime(210000),);
                  },)
                ],
              ),
              SizedBox(height: 3.h,),
              Row(
                children: [
                  Icon(Icons.access_time_rounded, color: ColorsMang.blue),
                  SizedBox(width: 4.w),
                  Text("Event time"),
                  Spacer(),
                  CustomTextButton(
                    text: "Choose Time",
                    onPressed: () {
                     showTimePicker(context: context, initialTime:TimeOfDay.now());
                    },
                  )
                ],
              ),

              SizedBox(height: 15,),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: CustomTextButton(text: "Add Event",)),
            ],
          ),
        ),
      ),
    );
  }
}
