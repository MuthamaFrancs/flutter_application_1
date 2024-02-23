import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     home: AnimateText(),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class AnimateText extends StatelessWidget {
  const AnimateText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              crossFadeState: CrossFadeState.showFirst,
              firstChild: Text("Text", style: TextStyle(fontSize: 50)),
              secondChild: Text("Text 2",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700)),
              duration: Duration(milliseconds: 500),
            ),
          ],
        ),
      ),
    );
  }
}
