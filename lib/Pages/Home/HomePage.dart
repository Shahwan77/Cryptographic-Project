import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:novindius/Routes/AppRoutes.dart';
import 'package:novindius/Utils/Dimensions.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Controller/HomeController.dart';

class HomePage extends StatelessWidget {
  final HomeControllers _calendarController = Get.put(HomeControllers());

   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffEBE9FF),
      appBar: AppBar(backgroundColor:Color(0xffEBE9FF) ,
        title: Row(
          children: [
            GestureDetector(onTap: () {
              Get.toNamed(AppRoutes.Attendance);
            },
                child: Icon(Icons.arrow_back)),
            Text(''),
          ],
        ),
      ),
    );
  }
}
