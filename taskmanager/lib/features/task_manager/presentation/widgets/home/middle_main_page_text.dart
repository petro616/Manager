import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddleMainPageText extends StatelessWidget {
  final String title;
  final String textGoToSeeProjects;
  final void Function() onTap;
  const MiddleMainPageText(
      {super.key,
      required this.title,
      required this.textGoToSeeProjects,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          padding: EdgeInsets.only(left: 14.w, top: 15.h),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23.sp),
          )),
      InkWell(
        splashColor: Colors.white,
        onTap: onTap,
        child: Container(
            padding: EdgeInsets.only(top: 17.h, right: 12.w),
            child: Text(
              textGoToSeeProjects,
              style: TextStyle(
                  color: const Color.fromARGB(255, 154, 181, 184),
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp),
            )),
      ),
    ]);
  }
}
