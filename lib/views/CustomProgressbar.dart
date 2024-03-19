import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../configs/constants.dart';

class CustomProgressBar extends StatefulWidget {
  const CustomProgressBar({super.key});

  @override
  State<CustomProgressBar> createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  int numberofAttendees = 80;
  incrementAttendees() {
    setState(() {
      numberofAttendees++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: LinearPercentIndicator(
                      animation: true,
                      animationDuration: 2000,
                      width: MediaQuery.of(context).size.width - 50,
                      lineHeight: 20.0,
                      percent: 0.8,
                      center: const Text(
                        "80.0%",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      backgroundColor: primaryColor.withOpacity(0.2),
                      progressColor: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "$numberofAttendees people attended chapel today",
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
