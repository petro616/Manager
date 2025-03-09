import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/features/task_manager/presentation/cubit/calendar_cubit.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/calendar_widget.dart';

class CalendarBuilder extends StatelessWidget {
  const CalendarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, DateTime>(
      builder: (context, selectedDate) {
        return CalendarWidget(
            onDateChange: (DateTime date) {
              context.read<CalendarCubit>().updateSelectedDate(date);
            },
            focusedDate: selectedDate);
      },
    );
  }
}
