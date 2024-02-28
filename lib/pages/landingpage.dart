import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Profile.dart';
import 'package:flutter_application_1/pages/attendancedashboard.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/pages/home.dart';

class Landingpage extends StatefulWidget {
  Landingpage({dynamic});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  int selectedIndex = 0;
  final pages = [
    const HomePage(),
    const AttendanceDashboard(),
    Profile(),
    //Implement other screens here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //i want the main axis to have a maximum width
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: greycolor,
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

      body: pages[selectedIndex],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      // Update the selected index
    });
  }
}
