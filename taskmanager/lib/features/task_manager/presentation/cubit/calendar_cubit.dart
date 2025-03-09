import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarCubit extends Cubit<DateTime> {
  CalendarCubit() : super(DateTime.now());

  void updateSelectedDate(DateTime newDate) {
    emit(newDate);
  }
}
