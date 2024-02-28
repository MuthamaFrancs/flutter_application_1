import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:flutter_application_1/views/CustomButton.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:flutter_application_1/views/CustomTextField.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whitecolor,
        foregroundColor: primaryColor,
        automaticallyImplyLeading: true,
      ),

      //this is the body
      //SINGLE CHILD SCROLL VIEW WIDGET
      body: SingleChildScrollView(
        //PADDING WIDGET
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "images/finallogo.jpg",
                    width: 200,
                    height: 200,
                  ),
                ),
              ),

              const customText(
                label: "Username",
                textStyle: TextStyle(
                  fontSize: 20.0,
                  color: primaryColor,
                  fontFamily: 'fontFamily',
                ),
              ),
              //usename controller
              customTextField(
                labelText: "Username",
                controller: usernamecontroller,
                hintText: "example@gmail.com, phone no",
                icon: Icons.person,
              ),
              //SizedBox Widget
              const SizedBox(
                height: 20,
              ),
              //customText Widget for password
              const customText(
                label: "Password",
                textStyle: TextStyle(color: primaryColor, fontSize: 20.0),
              ),
              //password controller = WITH OBSCUREED TEXT
              customTextField(
                labelText: "Password",
                controller: passwordcontroller,
                hintText: "password",
                icon: Icons.lock,
                obscureText: true,
                Iconsuffix: Icons.visibility_off,
              ),
              //customText(label: "ForgotPassword", style: FontWeight: fontWeight.),
              //ELevated Buton
              const SizedBox(
                height: 20,
              ),
              //forgot password hyperlink text
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customText(
                    label: "Forgot Password?",
                    textStyle: const TextStyle(
                      fontSize: 18.0,
                      color: bluecolor,
                    ),
                    onTap: () {
                      // Implement onTap functionality here
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              //sized box widget
              Center(
                child: customButton(
                  btnLabel: "Login",
                  btnColor: primaryColor,
                  action: navigatetolandingpage,
                  textStyle: const TextStyle(fontSize: 18, color: whitecolor),
                ),
              ),
              const SizedBox(height: 10.0),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(height: 10.0),
              // SIgnup
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const customText(
                        label: "Already have an account?",
                        textStyle: TextStyle(
                          color: blackcolor,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registration()));
                      },
                      child: customText(
                          label: " Sing up.",
                          onTap: navigatetoregistation,
                          textStyle: const TextStyle(
                            color: bluecolor,
                            decoration: TextDecoration.underline,
                          )),
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

  void navigatetolandingpage() {
    Get.toNamed("/landingpage");
  }

  void navigatetoregistation() {
    Get.toNamed("/registration");
  }
}
