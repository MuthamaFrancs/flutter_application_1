import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Profile')),
      ),
      body: const SingleChildScrollView(
        child: Center(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Phone :  ",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "+254769892579",
                          //recognizer: TapGestureRecognizer()
                          //  ..onTap = () {
                          //    //_launchURL("mailto:musaifrancis@gmail.com?subject=News&body=New%20plugin");
                          //  },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.edit,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Email: ",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "musaufrancis@gmail.com",
                      //recognizer: TapGestureRecognizer()
                      //  ..onTap = () {
                      //    //_launchURL("mailto:musaifrancis@gmail.com?subject=News&body=New%20plugin");
                      //  },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard {
  String? title;
  InfoCard({required String? title});
}
