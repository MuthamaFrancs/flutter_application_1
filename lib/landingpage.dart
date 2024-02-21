// ignore: unused_import
import 'dart:ui_web';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/configs/constants.dart';

// ignore: depend_on_referenced_packages
//import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MaterialApp(
    home: Landingpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Landingpage extends StatelessWidget {
  const Landingpage({dynamic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //i want the main axis to have a maximum width
      appBar: AppBar(
          title: Container(
        //Icon(Icons.person),
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Hi ',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Kalnia',
                    fontWeight: FontWeight.w300),
              ),
              TextSpan(
                text: 'Francis!',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Kalnia',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      )),
      body: SingleChildScrollView(
        child: Container(
          //color: primaryColor,

          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Card(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sunny,
                          color: Colors.yellow,
                          size: 20.0,
                        ),
                        Text(
                          "Today is Thursday 21/02/2024 ",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Text(
                      "Chapel Day Coming in 6 days!",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 30.0,
                ),
                Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "images/finallogo.jpg",
                          height: 400,
                          width: 400,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
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
                          Text(
                            "Scan Your Fingerprint to sign up for attendance!",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
