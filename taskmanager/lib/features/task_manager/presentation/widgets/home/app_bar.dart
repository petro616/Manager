import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarMade extends StatelessWidget {
  const AppBarMade({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        CircleAvatar(
          radius: 20.r,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: Image.asset(
                height: 70,
                "assets/images/undraw_percentages_wi9e.png",
                fit: BoxFit.cover,
              )),
        ),
        Text(
          "MANAGER",
          style: TextStyle(
              height: 3.h,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
              fontSize: 15.sp),
        )
      ],
    );
  }
}
