import 'package:flutter/material.dart';

class AttendanceDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Dashboard'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7, // 7 days in a week
        ),
        itemCount: 31, // Number of days in the month
        itemBuilder: (context, index) {
          // Calculate the day of the week (0 = Sunday, 1 = Monday, ..., 6 = Saturday)
          int dayOfWeek = (index + 1) % 7;

          // Determine the color based on attendance (green if attended, gray if not)
          Color dayColor = dayOfWeek == 0
              ? Colors.red
              : Colors.grey; // Default color is grey

          // Placeholder for checking attendance (you can replace this with your logic)
          bool attended = index % 3 == 0; // Example: every 3rd day is attended

          if (attended) {
            dayColor = Colors.green; // Change color to green if attended
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AttendanceDashboard(),
  ));
}
