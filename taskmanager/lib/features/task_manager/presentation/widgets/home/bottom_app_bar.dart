import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomAppBarMade extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onPressed;
  const BottomAppBarMade(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 25.h),
          child: Stack(
            children: [
              MaterialButton(
                  color: Colors.grey[200],
                  height: 40.h,
                  minWidth: 135.w,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r)),
                  onPressed: onPressed,
                  child: Text(
                    "       $title",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.only(right: 75.w),
                height: 43.h,
                width: 45.w,
                decoration: BoxDecoration(
                    gradient: SweepGradient(colors: [
                      Colors.cyan,
                      Colors.grey,
                      Colors.cyan,
                      Colors.grey,
                    ]),
                    borderRadius: BorderRadius.circular(100.r)),
                child: Icon(
                  icon,
                  size: 27.w,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
