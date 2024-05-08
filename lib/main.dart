import 'package:e_commerce/presentation/home_screen/home_page.dart';
import 'package:e_commerce/routes/App_pages.dart';
import 'package:e_commerce/routes/App_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBv_-JJOD5qCco8_g-syigqUQQ2B8B9JZY",
        appId:  "1:271281128895:android:3d069690ff04a7fea40d0a",
        messagingSenderId: "271281128895",
      projectId: "e-commerce-dee94",)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'Flutter Demo',
       initialRoute: AppRoutes.SplashScreen,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.Lists,
      ),
    );
  }
}
