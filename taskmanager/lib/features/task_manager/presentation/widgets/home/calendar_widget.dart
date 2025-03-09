import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:Manager/core/data_utils.dart';

class CalendarWidget extends StatelessWidget {
  final void Function(DateTime) onDateChange;
  final DateTime focusedDate;
  const CalendarWidget(
      {super.key, required this.onDateChange, required this.focusedDate});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLinePicker.itemBuilder(
        daySeparatorPadding: 12.w,
        itemExtent: 43.5.w,
        headerOptions: HeaderOptions(headerType: HeaderType.none),
        selectionMode: SelectionMode.autoCenter(),
        firstDate: firstDayOfMonth,
        lastDate: lastDayOfMonth,
        focusedDate: focusedDate,
        currentDate: DateTime.now(),
        itemBuilder: (context, date, isSelected, isDisabled, isToday, onTap) {
          return InkResponse(
            onTap: onTap,
            child: Column(
              spacing: 1.7.h,
              children: [
                Container(
                  height: 75.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      border: Border.all(color: Colors.grey),
                      gradient: isToday
                          ? SweepGradient(colors: [
                              Colors.cyan,
                              Colors.grey,
                              Colors.cyan,
                              Colors.grey,
                            ])
                          : isSelected
                              ? LinearGradient(
                                  colors: [Colors.blue, Colors.cyan])
                              : null),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      date.day.toString(),
                      style: TextStyle(
                          color: isToday ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19.sp),
                    ),
                  ),
                ),
                Text(DateFormat('EEE').format(date),
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ],
            ),
          );
        },
        onDateChange: onDateChange);
  }
}
