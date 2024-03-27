import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:novindius/Pages/Camera/CameraPage.dart';
import 'package:novindius/Pages/Home/Bindings/HomeBindings.dart';
import 'package:novindius/Pages/Login/Bindings/LoginBindings.dart';
import 'package:novindius/Pages/Login/LoginPage.dart';
import 'package:novindius/Pages/Password/Bindings/PasswordBindings.dart';
import 'package:novindius/Pages/Password/PasswordPage.dart';
import '../Pages/Attendance/AttendancePage.dart';
import '../Pages/Attendance/Bindings/AttendanceBindings.dart';
import '../Pages/Camera/Bindings/CameraBindings.dart';
import '../Pages/Home/HomePage.dart';
import 'AppRoutes.dart';

class AppPages {
  static var Lists = [
    GetPage( name: AppRoutes.Login, page: () => LoginPage(), binding: LoginBindings(),),
    GetPage( name: AppRoutes.Camera, page: () => QRViewExample(), binding: CameraBindings(),),
    GetPage( name: AppRoutes.Attendance, page: () => AttendancePage(), binding: AttendanceBindings(),),
    GetPage( name: AppRoutes.Password, page: () => PasswordPage(), binding: PasswordBindings(),),
    GetPage( name: AppRoutes.Home, page: () => HomePage(), binding: HomeBindings(),),
  ];
}