import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/ColorsMang.dart';
import '../../core/ImagesManger.dart';
import '../../core/Widgets/CustomeFormField.dart.dart';
import '../../core/Widgets/custoumTextButton.dart';
import '../../core/routesManager.dart';
class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Image.asset(ImagesManger.LogoEvently)),
              SizedBox(height: 24.h),
              Customeformfield(
                selectedicon: Icons.person,
                label: "Name",
                keyboardinputType: TextInputType.name,
              ),
              SizedBox(height: 16.h),
              Customeformfield(
                selectedicon: Icons.lock,
                label: "Password",
                keyboardinputType: TextInputType.visiblePassword,
                suffixIcon: Icons.visibility_outlined,
              ),

              SizedBox(height: 8.h),
              Container(
                  alignment: Alignment.centerRight,
                  child: CustomTextButton(onPressed:(){
                    Navigator.pushReplacementNamed(context, routesManager.register);
                  },text: "Forget Password")),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, routesManager.layout);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsMang.blue,
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have Account ?", style: TextStyle(color: Colors.black),),
                    SizedBox(width: 1.w,),
                    CustomTextButton(onPressed: (){
                      Navigator.pushReplacementNamed(context, routesManager.register);
                    },text: "Create Account",)
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}