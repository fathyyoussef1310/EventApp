import 'package:eventapp/Features/mainLayoutScreen/ScreensOfLayout/Home_tab/Models/catagory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Features/mainLayoutScreen/ScreensOfLayout/Home_tab/HomeScreen.dart';
import '../Features/mainLayoutScreen/ScreensOfLayout/Home_tab/catogery_item_ui.dart';
import '../core/ColorsMang.dart';

class Customtabbar extends StatefulWidget {
  Color selectedBackgroundColor;
  Color unselectedBackgroundColor;
  Color selectedFourBackgroundColor;
  Color unselectedFourBackgroundColor;
  Customtabbar({super.key,required this.categorymodels,required this.selectedBackgroundColor,required this.selectedFourBackgroundColor,required this.unselectedBackgroundColor,required this.unselectedFourBackgroundColor,});
List<categoryModel>categorymodels=[

];

  @override
  State<Customtabbar> createState() => _CustomtabbarState();
}

class _CustomtabbarState extends State<Customtabbar> {
   int selectedIndextab=0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categorymodels.length,
      child: TabBar(
        onTap: (value){
          setState(() {
            selectedIndextab=value;
          });
        },
        isScrollable: true,
        labelColor: ColorsMang.White,
        indicatorColor: Colors.transparent,
        tabs: widget.categorymodels.map((categorymodel) => CategoryItem(category: categorymodel,selectedBackgroundColor: widget.selectedBackgroundColor,unselectedBackgroundColor: widget.unselectedBackgroundColor,selectedFourBackgroundColor: widget.selectedFourBackgroundColor,unselectedFourBackgroundColor: widget.unselectedFourBackgroundColor,isSelected: selectedIndextab== widget.categorymodels.indexOf(categorymodel),)).toList(),
      ),
    );
  }
}
