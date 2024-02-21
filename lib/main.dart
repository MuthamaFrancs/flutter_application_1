import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/calculator.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: "/login",
      getPages: MyRoutes.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
