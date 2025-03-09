import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/core/data_utils.dart';

class TodayText extends StatelessWidget {
  const TodayText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 14.w, bottom: 13.h),
        child: Text(
          "Today's ${DataUtilsTaskManager.dayName}",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 23.sp),
        ));
  }
}
