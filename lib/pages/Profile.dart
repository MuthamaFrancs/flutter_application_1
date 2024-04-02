import 'package:flutter/material.dart';
//import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/configs/constants.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Center(child: Text('Profile')),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 100,
                    backgroundColor: whitecolor,
                    child: Icon(Icons.person, color: primaryColor, size: 150.0),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "Francis Musau",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Card(
                    child: InfoCard(
                      title: "Phone :",
                      subtitle: "+254769892579",
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Card(
                    child: InfoCard(
                      title: "Email:",
                      subtitle: "musaufrancis@gmail.com",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String? title;
  final String? subtitle;

  InfoCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              subtitle!,
              style: const TextStyle(
                fontSize: 20.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 20.0),
          GestureDetector(
            onTap: () {
              // Handle edit action
            },
            child: const Icon(
              Icons.edit,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
