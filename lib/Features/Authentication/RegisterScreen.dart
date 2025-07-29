import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/ColorsMang.dart';
import '../../core/ImagesManger.dart';
import '../../core/Widgets/CustomeFormField.dart.dart';
import '../../core/Widgets/custoumTextButton.dart';
import '../../core/routesManager.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text("Register")),
      backgroundColor: ColorsMang.White,
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
                selectedicon: Icons.email,
                label: "Email",
                keyboardinputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),
              Customeformfield(
                selectedicon: Icons.lock,
                label: "Password",
                keyboardinputType: TextInputType.visiblePassword,
                suffixIcon: Icons.visibility_outlined,
              ),
              SizedBox(height: 16.h),
              Customeformfield(
                selectedicon: Icons.lock,
                label: "Re-Password",
                keyboardinputType: TextInputType.visiblePassword,
                suffixIcon: Icons.visibility_off,
              ),
              SizedBox(height: 16.h),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsMang.LightBlue,
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  "Create Account",
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
                    Text("Already Have Account ?", style: TextStyle(color: Colors.black),),
                    SizedBox(width: 1.w,),
                    CustomTextButton(onPressed: (){
                      Navigator.pushReplacementNamed(context, routesManager.LoginScreen);
                    },text: "Login",)
                  ] ),
            ],
          ),
        ),
      ),
    );
  }
}