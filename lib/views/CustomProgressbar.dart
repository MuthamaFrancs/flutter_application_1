import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
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
            color: greycolor,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircularPercentIndicator(
                      animation: true,
                      animationDuration: 2000,
                      radius: 200,
                      lineWidth: 16.0,
                      percent: 0.8,
                      center: CircleAvatar(
                        radius: 80,
                        backgroundColor: whitecolor,
                        child: Image.asset(
                          "assets/images/people.jpg",
                          height: 150,
                          width: 150,
                        ),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: whitecolor.withOpacity(0.4),
                      progressColor: primaryColor.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "$numberofAttendees people attended chapel today",
                      style: const TextStyle(
                        color: primaryColor,
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
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
