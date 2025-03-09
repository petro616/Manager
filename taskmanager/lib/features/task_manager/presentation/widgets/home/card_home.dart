import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<Color> cardColor;
  final void Function() onTap;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.cardColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.elliptical(30.r, 30.r),
                  bottomLeft: Radius.elliptical(30.r, 30.r)),
              gradient: LinearGradient(colors: cardColor)),
          height: 105.h,
          padding: EdgeInsets.all(13.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12.5.sp,
                  color: Colors.white,
                ),
              ),
              Divider(
                thickness: 1.3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
