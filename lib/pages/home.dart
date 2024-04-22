import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:flutter_application_1/views/CustomAppbar.dart';
import 'package:flutter_application_1/views/CustomAttendanceWidget.dart';
import 'package:flutter_application_1/views/CustomProgressbar.dart';
import 'package:flutter_application_1/views/CustomVerses.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    //automaticLeading = false;
    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                CustomAppbar(
                    title: "Welcome ${userController.fname}!",
                    subtitle: "Sing Up your Chapel Attendance!"),
                // print(userController.fname.value),
                const CustomAttendance(),
                const CustomProgressBar(),
                const CustomVerses(),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
