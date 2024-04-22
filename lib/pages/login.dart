import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:flutter_application_1/views/CustomButton.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:flutter_application_1/views/CustomTextField.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../services/authentication.dart';
import '../views/CustomPasswordTxtField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernamecontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          //PADDING WIDGET

          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/finallogo.jpg",
                        width: 200,
                        height: 200,
                      ),
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
                  autofocus: true,
                  labelText: "Username",
                  controller: usernamecontroller,
                  hintText: "example@gmail.com, phone no",
                  prefixIcon: Icons.person,
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
                PasswordTExtField(
                  passcontroller: passwordcontroller,
                  labelText: "Password",
                  hintText: "Enter your password",
                  prefixIcon: Icons.lock,
                  obscureText: true,
                  suffixIcon: isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                //customText(label: "ForgotPassword", style: FontWeight: fontWeight.),
                //ELevated Buton
                const SizedBox(
                  height: 20,
                ),
                //forgot password hyperlink text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    customText(
                      label: "Forgot Password?",
                      textStyle: TextStyle(
                        color: bluecolor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                //sized box widget
                Center(
                  child: customButton(
                    btnLabel: "Login",
                    btnColor: primaryColor,
                    action: () {
                      login(usernamecontroller.text, passwordcontroller.text);
                    },
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
                          label: "Don't have an account yet?",
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
                          label: " Create account.",
                          onTap: navigatetoregistation,
                          textStyle: const TextStyle(
                            color: bluecolor,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        // customButton(
                        // btnLabel: "Create account",
                        // btnColor: primaryColor,
                        // action: () {
                        // navigatetoregistation();
                        // },
                        // textStyle: const TextStyle(fontSize: 18, color: whitecolor),
                        // ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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

  void dispose() {
    usernamecontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }
}
