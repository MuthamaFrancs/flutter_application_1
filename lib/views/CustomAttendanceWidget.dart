import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/CustomText.dart';

class CustomAttendance extends StatefulWidget {
  const CustomAttendance({super.key});

  @override
  State<CustomAttendance> createState() => _CustomAttendanceState();
}

class _CustomAttendanceState extends State<CustomAttendance> {
  
  final DateTime now = DateTime.now();
  void validator() {
    setState(
      () {
        if (now == DateTime.monday) {
          showDialog(
              context: context, builder: (BuildContext context) => AlertDialog(
                //implement user firstname
                title: const Text("Hi User"),
                content: Column(   
                  mainAxisAlignment: MainAxisAlignment.center,               
                  children: [
                    Image.asset("assets/images/mood-love-inspiration-tender.png",height: 50, width: 50,),
                    Text("You have successfully marked your attendance today! \n + ${Icons.fingerprint}"),
                  ]
                ),
                
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Confirm"),
                  ),
                ],
              ));
        }else{
         showDialog(
              context: context, builder: (BuildContext context) => AlertDialog(
                title: const Text("Hi User"),
                content: Column(   
                  mainAxisAlignment: MainAxisAlignment.center,               
                  children: [
                    Image.asset("assets/images/mood-frustration.png",height: 50, width: 50,),
                    Text("Looks like today is not the day! \n + ${Icons.fingerprint}"),
                  ]
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close"),
                  ),
                ],
              ));
        }        
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //implement on tap
      onTap: () {},
      child: Card(
        elevation: 10,
        color: greycolor,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Looks like today is chapel day! Mark your attendance",
                      style: TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/techny-time-management.png",
                        height: 200,
                        width: 200,
                      ),
                      GestureDetector(
                        onTap: () => {
                          //implement on tap
                          validator()
                        },
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: customText(
                            label: "Mark attendance",
                            textStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.blueAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
