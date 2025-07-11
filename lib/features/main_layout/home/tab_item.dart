import 'package:evently_c15_offline_friday/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabItem extends StatelessWidget {
  const TabItem({super.key, required this.category,
    required this.isSelected,
  required this.selectedBgColor,
    required this.unSelectedBgColor,
    required this.selectedForegroundColor,
    required this.unSelectedForegroundColor

  });

  final CategoryModel category;
  final bool isSelected;
  final Color selectedBgColor;
  final Color unSelectedBgColor;
  final Color selectedForegroundColor;
  final Color unSelectedForegroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? selectedBgColor : unSelectedBgColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: Colors.white, width: 1),
      ),
      child: Row(
        children: [
          Icon(category.iconData, color:  isSelected? selectedForegroundColor : unSelectedForegroundColor),
          SizedBox(width: 8.w),
          Text(category.title, style: GoogleFonts.inter(color: isSelected? selectedForegroundColor : unSelectedForegroundColor, fontSize: 16.sp, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
