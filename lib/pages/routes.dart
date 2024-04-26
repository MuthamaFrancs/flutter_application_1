import 'package:flutter_application_1/pages/Profile.dart';
import 'package:flutter_application_1/pages/attendancedashboard.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/landingpage.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:get/get.dart';

class MyRoutes {
  // ...
  static var routes = [
    GetPage(name: "/login", page: () => const Login()),
    GetPage(name: "/homepage", page: () => const HomePage()),
    GetPage(name: "/registration", page: () => Registration()),
    GetPage(name: "/landingpage", page: () => Landingpage()),
    GetPage(name: "/statistics", page: () => const AttendanceDashboard()),
    GetPage(name: "/profile", page: () => Profile()),
  ];
}
