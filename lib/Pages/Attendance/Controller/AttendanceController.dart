import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendanceControllers extends GetxController {
  var selectedItemIndex = 0.obs;

  void selectItem(int index) {
    selectedItemIndex.value = index;
    update();
  }
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    this.selectedDay = selectedDay;
    this.focusedDay = focusedDay;
    update();
  }

  void onFormatChanged(CalendarFormat format) {
    calendarFormat = format;
    update();
  }

  void onPageChanged(DateTime focusedDay) {
    this.focusedDay = focusedDay;
    update();
  }

  // List<DateTime> redDates = [
  //   DateTime.utc(2024, 3, 17),
  //   DateTime.utc(2024, 3, 27),
  // ];
}
