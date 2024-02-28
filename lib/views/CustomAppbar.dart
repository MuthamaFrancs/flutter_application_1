import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/configs/constants.dart';

class CustomAppbar extends StatelessWidget {
  CustomAppbar({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        //height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    child: Icon(Icons.person, color: primaryColor, size: 60.0),
                    radius: 40.0,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: greycolor,
                      fontSize: 18.0,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: greycolor,
                      fontSize: 22.0,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: CustomAppbar(
//         title: 'Hello, Francis!',
//         subtitle: 'Welcome to back to One-Tap Auth',
//       ),
//     ),
//   );
// }
