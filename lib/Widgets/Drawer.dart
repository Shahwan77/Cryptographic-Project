import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:novindius/Routes/AppRoutes.dart';
import 'package:novindius/Utils/Dimensions.dart';

import '../Pages/Attendance/Controller/AttendanceController.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    final AttendanceControllers controller = Get.find();

    return Obx(
      () => Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Scaffold.of(context).closeDrawer();
                        },
                        child: Image.asset("assets/menu.png", height: 14)),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Menu",
                      style: TextStyle(
                        color: Color(0xFF535353),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0.07,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              _buildDrawerItem(
                index: 0,
                icon: Icons.calendar_month,
                title: 'ATTENDANCE',
                onTap: () {
                  Get.offAllNamed(AppRoutes.Attendance);
                },
                selected: controller.selectedItemIndex.value == 0,
              ),
              _buildDrawerItem(
                index: 1,
                icon: Icons.currency_rupee,
                title: 'EXPENSE',
                onTap: () {
                  Get.offAllNamed(AppRoutes.Home);
                },
                selected: controller.selectedItemIndex.value == 1,
              ),
              GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.Password);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      child: Row(children: [
                        Icon(Icons.key,color: Color(0xFF535353),),
                        SizedBox(width: 10),
                        Text('CHANGE PASSWORD',style: TextStyle(
                          color: Color(0xFF535353),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),)
                      ]),
                    ),
                  )),
              SizedBox(
                height: 450,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.Login);
                  },
                  child: Row(
                    children: [
                      Transform.rotate(
                          angle: pi / 2,
                          child: Icon(
                            Icons.file_upload_outlined,
                            color: Colors.red,
                          )),
                      SizedBox(width: 10,),
                      Text(
                        "LOG OUT",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required int index,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required bool selected,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.all(Dimensions.PADDING_SIZE_EXTRA_SMALL),
      title: Container(
        decoration: BoxDecoration(
          color: selected ? Color(0xFF89C11E) : Colors.transparent,
          border: Border.all(
            color: selected ? Colors.green : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(7.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: selected ? Colors.white : Color(0xFF535353),
            ),
            SizedBox(width: 12.0),
            Text(
              title,
              style: TextStyle(
                color: selected ? Colors.white : Color(0xFF535353),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,    );
  }
}
