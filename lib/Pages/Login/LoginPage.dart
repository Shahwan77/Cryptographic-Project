import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:novindius/Routes/AppRoutes.dart';
import 'package:novindius/Utils/Dimensions.dart';
import 'package:novindius/Widgets/Textfield.dart'; // Not sure if this is used, but included based on your original code

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBE9FF),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Image.asset("assets/cmlogo.png"),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_EXTRA_LARGE,
                      vertical: Dimensions.PADDING_SIZE_SMALL),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Username",
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
                        hintText: 'Enter your username',
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
                        "Password",
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
                        hintText: 'Enter your password',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.Password);
                      },
                        child: Text("Forget your Password?")),
                  )],
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
                      "LOG IN",
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff0B1515),
                Color(0xff296A66),
                Color(0xffF5F7F7),
                Color(0xff86BEC4),
              ],
              stops: [0.1, 0.20, 0.418, 0.75],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              transform: GradientRotation(3.4),
            ),
          ),
        ),
      ),
    );
  }
}
