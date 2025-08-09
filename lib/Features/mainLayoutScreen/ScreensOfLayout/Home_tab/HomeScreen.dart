import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/ColorsMang.dart';
import '../../event_item.dart';
import 'Models/catagory.dart';
import 'catogery_item_ui.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
int selectedIndex=0;
class _HomescreenState extends State<Homescreen> {
  List<categoryModel>categorymodels=[
     categoryModel(name: "All", icon: Icons.all_inclusive),
    categoryModel(name: " Sports", icon: Icons.bike_scooter_outlined),
    categoryModel(name: "BirthDay", icon: Icons.cake),
    categoryModel(name: "Meetings", icon: Icons.laptop),
    categoryModel(name: "Gaming", icon: Icons.games),
    categoryModel(name: "Eating", icon: Icons.cookie),
    categoryModel(name: "Holiday", icon: Icons.holiday_village),
    categoryModel(name: "Exhibition", icon: Icons.workspace_premium_rounded),
    categoryModel(name: "BookClub", icon: Icons.book_online),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: REdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24.r)),
            color: ColorsMang.LightBlue,
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back ✨",
                            style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              color: ColorsMang.White,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "Youssef Fathy",
                            style: GoogleFonts.inter(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: ColorsMang.White,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.wb_sunny_outlined,
                            color: ColorsMang.White, size: 20.r),
                        SizedBox(width: 8.w),
                        Card(
                          child: Padding(
                            padding: EdgeInsets.all(9.0),
                            child: Text(
                              "EN",
                              style: GoogleFonts.inter(
                                color: ColorsMang.LightBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,
                        size: 16.r, color: ColorsMang.White),
                    SizedBox(width: 4.w),
                    Text(
                      "Cairo, Egypt",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        color: ColorsMang.White,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DefaultTabController(
                    length: categorymodels.length,
                    child: TabBar(
                      onTap: (value){
                        setState(() {
                          selectedIndex=value;
                        });
                      },
                       isScrollable: true,
                      labelColor: ColorsMang.White,
                      indicatorColor: Colors.transparent,
                      tabs: categorymodels.map((categorymodel) => CategoryItem(category: categorymodel,selectedBackgroundColor: ColorsMang.White,unselectedBackgroundColor: Colors.transparent,selectedFourBackgroundColor: Colors.blue,unselectedFourBackgroundColor: Colors.white38,isSelected: selectedIndex == categorymodels.indexOf(categorymodel),)).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return  EventItem();
                },
              separatorBuilder: (context, index) => SizedBox(height: 9.h),
              itemCount: 20
          ),
        ),
      ],
    );
  }
}