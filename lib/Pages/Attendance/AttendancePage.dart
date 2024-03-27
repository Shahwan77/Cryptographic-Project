import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../Utils/Dimensions.dart';
import '../../Widgets/Drawer.dart';
import '../Home/Controller/HomeController.dart';
import 'Controller/AttendanceController.dart';

class AttendancePage extends StatelessWidget {
  final AttendanceControllers _calendarController =
      Get.put(AttendanceControllers());

  AttendancePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBE9FF),
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xffEBE9FF),
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                icon: Image.asset(
                  "assets/menu.png",
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          },
        ),
        title: Text(
          'ATTENDANCE',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0.07,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Image.asset("assets/avatar.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 430,
              height: 400,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: GetBuilder<AttendanceControllers>(
                builder: (controller) => TableCalendar(
                  shouldFillViewport: true,
                  firstDay: DateTime.utc(2021, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: controller.focusedDay,
                  calendarFormat: controller.calendarFormat,
                  selectedDayPredicate: (day) {
                    return isSameDay(controller.selectedDay, day);
                  },
                  onDaySelected: controller.onDaySelected,
                  onFormatChanged: controller.onFormatChanged,
                  onPageChanged: controller.onPageChanged,
                  // eventLoader: (day) {
                  //   // Return a list of events for the specified day
                  //   // return controller.redDates.contains(day) ? [day] : [];
                  // },
                  calendarStyle: CalendarStyle(
                    todayDecoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.red),
                    selectedDecoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.deepOrange),
                    // selectedDecoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(10),
                    //   color: Colors.red,
                    // ),todayDecoration: BoxDecoration( borderRadius: BorderRadius.circular(10),
                    // color: Colors.orange,),
                    // Style for the red dates
                    markersMaxCount: 1,
                    markerMargin: EdgeInsets.symmetric(horizontal: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_LARGE,
                  vertical: Dimensions.PADDING_SIZE_EXTRA_OVER_LARGE),
              child: Row(
                children: [
                  Text(
                    'LEAVE REQUESTS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 430,
              height: 290,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
