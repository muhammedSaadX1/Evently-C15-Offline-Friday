import 'package:evently_c15_offline_friday/core/colors_manager.dart';
import 'package:evently_c15_offline_friday/features/main_layout/home/event_item.dart';
import 'package:evently_c15_offline_friday/features/main_layout/home/tab_item.dart';
import 'package:evently_c15_offline_friday/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTab extends StatefulWidget {
  HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<CategoryModel> categories = [
    CategoryModel(title: "All", iconData: Icons.all_inclusive_outlined),
    CategoryModel(title: "Sports", iconData: Icons.sports_football_rounded),
    CategoryModel(title: "Birthday", iconData: Icons.cake),
    CategoryModel(title: "Meeting", iconData: Icons.laptop_chromebook_rounded),
    CategoryModel(title: "Gaming", iconData: Icons.gamepad_outlined),
    CategoryModel(title: "Eating", iconData: Icons.local_pizza_rounded),
    CategoryModel(title: "Holiday", iconData: Icons.holiday_village),
    CategoryModel(title: "Exhibition", iconData: Icons.water_drop_outlined),
    CategoryModel(title: "Workshop", iconData: Icons.workspaces_rounded),
    CategoryModel(title: "Book Club", iconData: Icons.book),
  ];

int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: REdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10.r),
              ),
            ),

            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Back ✨",
                          textAlign: TextAlign.start,
                          style:Theme.of(context).textTheme.headlineSmall
                        ),
                        Text(
                          "Muhammed Saad",
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontSize: 24.sp,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on_rounded,

                            ),
                            Text(
                              "Cairo, Egypt",
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.light_mode),
                    SizedBox(width: 4.w),
                    Container(
                      padding: REdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: ColorsManager.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),

                      child: Text(
                        "En",
                        style: Theme.of(context).textTheme.titleSmall
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h,),
                DefaultTabController(
                  length: categories.length,
                  child: TabBar(
                    tabAlignment: TabAlignment.start,
                    onTap: (newIndex) {
                      selectedIndex = newIndex;
                      setState(() {

                      });

                    } ,
                    indicatorColor: Colors.transparent,
                    isScrollable: true,
                    tabs:
                        categories
                            .map(
                              (category) => TabItem(
                                category: category,
                                isSelected: categories.indexOf(category) == selectedIndex,
                                selectedBgColor: ColorsManager.lightBlue,
                                selectedForegroundColor: ColorsManager.blue,
                                unSelectedBgColor: Colors.transparent,
                                unSelectedForegroundColor:
                                    ColorsManager.lightBlue,
                              ),
                            )
                            .toList(),
                  ),
                ),

              ],
            ),
          ),
          Expanded(child: ListView.builder(
              itemBuilder: (context, index) => EventItem(),
              itemCount: 15))
        ],
      ),
    );
  }
}
