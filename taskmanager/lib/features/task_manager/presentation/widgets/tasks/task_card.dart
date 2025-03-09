import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';

class TaskCard extends StatelessWidget {
  final TasksEntities task;
  final String content;
  final void Function() onFinishTask;
  final int priority;
  final String description;
  final List<Color> cardColor;
  final void Function() onTap;
  final void Function() onEdit;

  const TaskCard({
    super.key,
    required this.content,
    required this.description,
    required this.cardColor,
    required this.onTap,
    required this.task,
    required this.priority,
    required this.onFinishTask,
    required this.onEdit,
  });

  String getPriority() {
    switch (priority) {
      case 1:
        return "Priority : Low";
      case 2:
        return "Priority : Medium";
      case 3:
        return "Priority : High";
      default:
        return "";
    }
  }

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
          padding: EdgeInsets.all(13.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  content,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                InkWell(
                  splashColor: Colors.cyan,
                  onTap: onEdit,
                  child: Icon(
                    Icons.edit,
                    size: 21,
                    color: Colors.white,
                  ),
                )
              ]),
              SizedBox(height: 7.h),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12.5.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 7.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  getPriority(),
                  style: TextStyle(
                      fontSize: 12.5.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                MaterialButton(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  color: Colors.white,
                  onPressed: onFinishTask,
                  child: Text(
                    "Finish Task",
                    style: TextStyle(
                        color: Colors.grey[600], fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
