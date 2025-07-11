import 'package:evently_c15_offline_friday/core/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,  this.prefixIcon, required this.labelText,
  this.suffixIcon, this.keyboardType = TextInputType.text,
  });
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String labelText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.inter(fontSize: 16, color: ColorsManager.black, fontWeight: FontWeight.w400),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,

        labelText: labelText,),
    );
  }
}
