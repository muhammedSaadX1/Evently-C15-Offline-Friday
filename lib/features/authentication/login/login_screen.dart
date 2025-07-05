import 'package:evently_c15_offline_friday/core/assets_manager.dart';
import 'package:evently_c15_offline_friday/core/colors_manager.dart';
import 'package:evently_c15_offline_friday/core/routes_manager/routes_manager.dart';
import 'package:evently_c15_offline_friday/core/widgets/custom_elevated_button.dart';
import 'package:evently_c15_offline_friday/core/widgets/custom_text_button.dart';
import 'package:evently_c15_offline_friday/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Column(
          children: [
            Expanded(child: Image.asset(ImageAssets.eventlyLogo)),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  SizedBox(height: 16),
                  CustomTextFormField(
                    labelText: "Email",
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.h),
                  CustomTextFormField(
                    labelText: "Password",
                    prefixIcon: Icons.lock_person,
                    suffixIcon: Icons.visibility_off,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      title: "Forget Password",
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 8.h),
                  CustomElevatedButton(title: "Login"),

                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have Account ?", style: GoogleFonts.inter(fontSize: 16.sp, fontWeight: FontWeight.w500, color: ColorsManager.black),),
                      CustomTextButton(title: "Create Account", onPressed: (){
                        Navigator.pushReplacementNamed(context, RoutesManager.register);
                      },)
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
