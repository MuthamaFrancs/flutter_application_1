import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:get/get.dart';

class CustomVerses extends StatefulWidget {
  const CustomVerses({super.key});

  @override
  State<CustomVerses> createState() => _CustomVersesState();
}

class _CustomVersesState extends State<CustomVerses> {
  final List<String> verses = [
    "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life. John 3:16",
    "The Lord is my shepherd, I lack nothing. Psalm 23:1",
    "I can do all things through him who gives me strength. Philippians 4:13",
    "The Lord is my light and my salvation— whom shall I fear? The Lord is the stronghold of my life— of whom shall I be afraid? Psalm 27:1",
  ];
  late String todaysVerse;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: greycolor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sunny,
                    color: Colors.yellow,
                    size: 60.0,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Today's Verse",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(todaysVerse,
                    style: const TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.normal)),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: updateVerse,
                  child: const Text("Get New Verse"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void initState() {
    super.initState();
    // Initialize with a random verse
    todaysVerse = getVerse();
  }

  //function to get random verse from the list
  getVerse() {
    Random random = Random();
    return verses[random.nextInt(verses.length)];
  }

  //function to get random verse from the list
  updateVerse() {
    setState(() {
      todaysVerse = getVerse();
    });
  }
}
