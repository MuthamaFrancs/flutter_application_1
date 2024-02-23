import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/attendancedashboard.dart';
import 'package:flutter_application_1/configs/constants.dart';

void main() {
  runApp(MaterialApp(
    home: Landingpage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Landingpage extends StatefulWidget {
  Landingpage({dynamic});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  int selectedIndex = 0;
  final pages = [
    Landingpage(),
    AttendanceDashboard(),
    //Implement other screens here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //i want the main axis to have a maximum width
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        enableFeedback: true,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_rounded),
            label: 'Statistics',
            //activeIcon: ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
      appBar: AppBar(
          title: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
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
                    child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sunny,
                              color: Colors.yellow,
                              size: 60.0,
                            ),
                            Text(
                              "Today is Thursday 21/02/2024 ",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Chapel Day Coming in 6 days!",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
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
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "images/finallogo.jpg",
                            height: 400,
                            width: 400,
                          ),
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
                          SizedBox(
                            height: 20.0,
                          ),
                          Center(
                            child: Text(
                              "Scan to sign up for attendance!",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                              ),
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

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index; // Update the selected index
    });
  }
}
