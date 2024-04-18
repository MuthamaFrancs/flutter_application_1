import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/configs/constants.dart';

class CustomAttendance extends StatefulWidget {
  const CustomAttendance({super.key});

  @override
  State<CustomAttendance> createState() => _CustomAttendanceState();
}

class _CustomAttendanceState extends State<CustomAttendance> {
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
                      const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Mark Attendance",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.blueAccent,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
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
}
