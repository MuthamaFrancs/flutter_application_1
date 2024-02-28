import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/CustomAppbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: Container(
      //       child: RichText(
      //         text: const TextSpan(
      //           children: [
      //             TextSpan(
      //               text: 'Welcome Back ',
      //               style: TextStyle(
      //                 fontSize: 20.0,
      //                 fontFamily: 'Kalnia',
      //                 fontWeight: FontWeight.w300,
      //               ),
      //             ),
      //             TextSpan(
      //               text: 'Francis!',
      //               style: TextStyle(
      //                 fontSize: 22.0,
      //                 fontFamily: 'Kalnia',
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomAppbar(title: "Hello Francis!", subtitle: "Welcome Back! "),
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
                              "Today is Wednesday 28/02/2024 ",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus auctor sapien.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus, est id vestibulum lobortis, odio ipsum lacinia nunc, vel accumsan nisi lectus nec ligula. Aliquam in dui lorem. Vivamus auctor sapien"),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Chapel Day Coming in 6 days!",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
