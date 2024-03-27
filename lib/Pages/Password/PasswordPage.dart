import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Routes/AppRoutes.dart';
import '../../Utils/Dimensions.dart';
import '../../Widgets/Textfield.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBE9FF),
      appBar: AppBar(backgroundColor: Color(0xffEBE9FF),
        title: Text("PASSWORD",style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: 0.07,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Image.asset("assets/avatar.png"),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'New Password',
                    style: TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.RADIUS_EXTRA_LARGE),
                    topLeft: Radius.circular(Dimensions.RADIUS_EXTRA_LARGE),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 6),
                        blurRadius: 5)
                  ],
                ),
                child: CustomTextFields(
                  decoration: InputDecoration(
                    filled: true,fillColor:
                  Colors.white,
                    hintText: 'Enter your new password',
                    hintStyle: TextStyle(
                      color: Color(0xFF919191),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft:
                        Radius.circular(Dimensions.fontSizeOverLarge),
                        topRight:
                        Radius.circular(Dimensions.fontSizeOverLarge),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Re-enter New Password',
                    style: TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                    Radius.circular(Dimensions.RADIUS_EXTRA_LARGE),
                    bottomRight:
                    Radius.circular(Dimensions.RADIUS_EXTRA_LARGE),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 5),
                        blurRadius: 5)
                  ],
                ),
                child: CustomTextFields(
                  decoration: InputDecoration(
                    hintText: 'Re-enter your new password',
                    hintStyle: TextStyle(
                      color: Color(0xFF919191),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                    ),
                    filled: true,fillColor:
                  Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                        Radius.circular(Dimensions.RADIUS_EXTRA_LARGE),
                        bottomRight:
                        Radius.circular(Dimensions.RADIUS_EXTRA_LARGE),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                  vertical: Dimensions.PADDING_SIZE_SMALL),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color(0xff89C11E),
                    fixedSize: Size(360, 50)),
                onPressed: () {
                  Get.toNamed(AppRoutes.Camera);
                },
                child: Text(
                  "SAVE CHANGES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.07,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
