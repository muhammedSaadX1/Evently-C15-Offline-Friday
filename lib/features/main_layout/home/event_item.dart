import 'package:evently_c15_offline_friday/core/assets_manager.dart';
import 'package:evently_c15_offline_friday/core/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventItem extends StatefulWidget {
  const EventItem({super.key});

  @override
  State<EventItem> createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  bool isFav = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: REdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(width: 1, color: ColorsManager.blue),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(ImageAssets.meeting),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: REdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              child: Column(
                children: [
                  Text(
                    "21",
                    style: Theme.of(context).textTheme.headlineMedium
                  ),
                  Text(
                    "Nov",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold
                    )
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 120.h),
          Card(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("Meeting for Updating The Development Method ", style:Theme.of(context).textTheme.titleMedium,),
                  ),
                  SizedBox(width: 4),
                  IconButton(
                    onPressed: () {
                      isFav = !isFav;
                      setState(() {});
                    },
                    icon: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border_outlined,
                      color: ColorsManager.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
