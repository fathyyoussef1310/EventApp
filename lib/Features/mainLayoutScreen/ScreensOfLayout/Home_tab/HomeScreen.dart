import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/catogery_item_ui.dart';
import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/Models/event_item.dart';
import 'package:eventapp/core/ColorsMang.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../widgets/CustomTabBar.dart';
import 'Models/catagory.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
int selectedIndex=0;
class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: REdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24.r)),
              color: Theme.of(context).primaryColor,
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
                          style:Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: ColorsMang.ofWhite
                          )
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              "Youssef Fathy",
                              style:Theme.of(context).textTheme.titleLarge?.copyWith(
                              )
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.wb_sunny_outlined,
                              color: ColorsMang.whiteBlue, size: 20.r),
                          SizedBox(width: 8.w),
                          Card(
                            color: Theme.of(context).cardColor,
                            child: Padding(
                              padding: EdgeInsets.all(9.0),
                              child: Text(
                                "EN",
                                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: ColorsMang.blue
                                )
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
                          size: 16.r, color: Theme.of(context).iconTheme.color),
                      SizedBox(width: 4.w),
                      Text("Cairo, Egypt",style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: ColorsMang.ofWhite,
                      ),),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:Customtabbar(categorymodels: categoryModel.catagoriesall,selectedBackgroundColor: Theme.of(context).secondaryHeaderColor,unselectedBackgroundColor: Theme.of(context).primaryColor,selectedFourBackgroundColor: ColorsMang.blue,unselectedFourBackgroundColor: ColorsMang.whiteBlue,),
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
      ),
    );
  }
}