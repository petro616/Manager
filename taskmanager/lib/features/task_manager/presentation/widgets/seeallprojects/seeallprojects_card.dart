import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllProjectsCard extends StatelessWidget {
  final String title;
  final String description;
  final List<Color> cardColor;
  final void Function() onDelete;
  final void Function() onTap;

  const SeeAllProjectsCard({
    super.key,
    required this.title,
    required this.description,
    required this.cardColor,
    required this.onTap,
    required this.onDelete,
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
          height: 90.h,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12.5.sp,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.cyan,
                    onTap: onDelete,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  )
                ],
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
