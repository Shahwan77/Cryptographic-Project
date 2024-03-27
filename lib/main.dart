import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:novindius/tst.dart';
import 'Routes/AppPages.dart';
import 'Routes/AppRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppRoutes.Login,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.Lists,
    );
  }
}
