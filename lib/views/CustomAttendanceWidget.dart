import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:get/get.dart';

class CustomAttendance extends StatefulWidget {
  const CustomAttendance({super.key});
  @override
  State<CustomAttendance> createState() => _CustomAttendanceState();
}

class _CustomAttendanceState extends State<CustomAttendance> {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //implement on tap
      onTap: () {},
      child: Card(
        elevation: 10,
        color: greycolor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Looks like today is chapel day! Mark your attendance",
                      style: TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/techny-time-management.png",
                        height: 200,
                        width: 200,
                      ),
                      GestureDetector(
                        onTap: () => {
                          //implement on tap
                          validator()
                        },
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: customText(
                            label: "Mark attendance",
                            textStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.blueAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validator() {
    //declaring an init day to a tuesday(2024, 4, 23) which is on a Tuesday
    final localDay = DateTime.utc(2024, 4, 23);

    var now = DateTime.now();

    setState(
      () {
        if (now.weekday == localDay.weekday) {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              //implement user firstname
              title: Text("Hi ${userController.fname.value}!"),
              content: const Text(
                  "💪🏻 K E E P  U P  T H E  C O N S I S T E N C Y! 💪🏻"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Confirm"),
                ),
              ],
            ),
          );
        } else {
          showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text("Hi ${userController.fname.value}!"),
              content: const Text(
                  "Looks like today is not T U E🥲  or  T H U R 🥲!"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Close"),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
