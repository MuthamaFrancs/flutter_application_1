import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/LoginController.dart';
import 'package:flutter_application_1/views/CustomAppbar.dart';
import 'package:flutter_application_1/views/CustomProgressbar.dart';
import 'package:flutter_application_1/views/CustomVerses.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
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
                    title: "Welcome Francis!",
                    subtitle: "Sing Up your Chapel Attendance!"),
                const Text(
                  "Today is Friday 1/03/2024",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                CircleAvatar(
                  radius: 120,
                  backgroundColor: whitecolor,
                  child: Image.asset(
                    "assets/images/people.jpg",
                    height: 250,
                    width: 250,
                  ),
                ),
                const CustomProgressBar(),
                const CustomVerses(),
                const SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  //implement on tap
                  onTap: () {},
                  child: const Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.fingerprint,
                                size: 40.0,
                                color: primaryColor,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Center(
                              child: Text(
                                "Tap to sign up Today!",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
