import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Another Bangerr!!!")),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: primaryColor,
        items: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.person, color: Colors.white),
          Icon(Icons.settings, color: Colors.white),
        ],
        onTap: (index) {},
      ),
    );
  }
}
