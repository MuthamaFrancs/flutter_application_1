import 'package:flutter/cupertino.dart';
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
                //const Text(
                //  "Today is Friday 1/03/2024",
                //  style: TextStyle(
                //    fontSize: 20.0,
                //    fontWeight: FontWeight.normal,
                //  ),
                //),
                const CustomProgressBar(),
                const CustomVerses(),
                const SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  //implement on tap
                  onTap: () {},
                  child: Card(
                    color: greycolor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.fingerprint,
                                size: 40.0,
                                color: primaryColor,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Card(
                              color: greycolor,
                              margin: const EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "Mark Attendance",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    "assets/images/techny-time-management.png",
                                    height: 200,
                                    width: 200,
                                  ),
                                  const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Mark Attendance",
                                      style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ),
                                ],
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
