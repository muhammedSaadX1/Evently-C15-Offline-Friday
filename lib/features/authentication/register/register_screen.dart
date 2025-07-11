import 'package:evently_c15_offline_friday/core/assets_manager.dart';
import 'package:evently_c15_offline_friday/core/colors_manager.dart';
import 'package:evently_c15_offline_friday/core/routes_manager/routes_manager.dart';
import 'package:evently_c15_offline_friday/core/widgets/custom_elevated_button.dart';
import 'package:evently_c15_offline_friday/core/widgets/custom_text_button.dart';
import 'package:evently_c15_offline_friday/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(ImageAssets.eventlyLogo,width: 150.w, height: 150.h,),
              SizedBox(height: 24.h),
              CustomTextFormField(
                keyboardType: TextInputType.name,
                prefixIcon: Icons.person,
                labelText: "Name",
              ),
              SizedBox(height: 16.h),
              CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_rounded,
                labelText: "Email",
              ),
              SizedBox(height: 16.h),
              CustomTextFormField(
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Icons.visibility_off,
                labelText: "Password",
              ),
              SizedBox(height: 16.h),
              CustomTextFormField(
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: Icons.visibility_off,
                labelText: "Re-Password",
              ),
              SizedBox(height: 16.h),
              CustomElevatedButton(title: "Create Account"),
              SizedBox(height: 16.h),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have Account ?",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorsManager.black,
                    ),
                  ),
                  CustomTextButton(
                    title: "Login",
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesManager.login,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
