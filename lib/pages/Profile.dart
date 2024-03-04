import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Profile')),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: whitecolor,
              child: Icon(Icons.person, color: primaryColor, size: 150.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Francis Musau",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20.0,
            ),
            // InfoCard(title: "Email:"),
          ],
        ),
      ),
    );
  }
}

class InfoCard {
  String? title;
  InfoCard({required String? title});
}
