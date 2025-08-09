import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/ColorsMang.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Container(
         decoration:BoxDecoration(
           color: ColorsMang.LightBlue,
           // borderRadius: BorderRadius.only(bottomLeft: )
         ),
       )
     ],
    );
  }
}
