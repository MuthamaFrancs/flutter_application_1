import 'package:flutter/material.dart';

class AttendanceDashboard extends StatelessWidget {
  const AttendanceDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 13),
        child: GridView.builder(
          padding: const EdgeInsets.all(15.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7, // 7 days in a week
          ),
          itemCount: 31,
          itemBuilder: (context, index) {
            // Calculate the day of the week
            int dayOfWeek = (index + 1) % 7;
            Color dayColor = dayOfWeek == 0 ? Colors.red : Colors.grey;

            bool attended = index % 3 == 0; //unattended

            if (attended) {
              dayColor = Colors.green.shade200;
            }

            // Build the day widget
            return Container(
              alignment: Alignment.center,
              color: dayColor,
              child: Text(
                '${index + 1}', // Display day number
                style: const TextStyle(
                  color: Colors.white, // Text color is white
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
