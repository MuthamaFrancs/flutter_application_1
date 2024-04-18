import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/CustomButton.dart';
import 'package:flutter_application_1/views/CustomPasswordTxtField.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:flutter_application_1/views/CustomTextField.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/services/authentication.dart';

class Registration extends StatefulWidget {
  Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController firstnamecontroller = TextEditingController();

  final TextEditingController lastnamecontroller = TextEditingController();

  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController phonenocontroller = TextEditingController();

  final TextEditingController passwordcontroller = TextEditingController();

  final TextEditingController confirmpasswordcontroller =
      TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: customText(
                            label: "First Name",
                            textStyle:
                                TextStyle(color: primaryColor, fontSize: 18.0),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        customTextField(
                          autofocus: true,
                          labelText: "First Name",
                          controller: firstnamecontroller,
                          hintText: "first name",
                        ),
                      ],
                    ),
                  ),
                  //SIZED BOX IN BETWEEN
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: customText(
                            label: "Last Name",
                            textStyle:
                                TextStyle(color: primaryColor, fontSize: 18.0),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        customTextField(
                          labelText: "LastName",
                          controller: lastnamecontroller,
                          hintText: "last name",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              const customText(
                  label: "Email",
                  textStyle: TextStyle(color: primaryColor, fontSize: 18.0)),
              const SizedBox(
                height: 7,
              ),
              customTextField(
                labelText: "email",
                controller: emailcontroller,
                hintText: "example@gmail.com",
                prefixIcon: Icons.email,
              ),
              const SizedBox(
                height: 7,
              ),
              const customText(
                  label: "Phone No",
                  textStyle: TextStyle(color: primaryColor, fontSize: 18.0)),
              const SizedBox(
                height: 7,
              ),
              customTextField(
                labelText: "Phone no",
                controller: phonenocontroller,
                hintText: "+245712000000",
                prefixIcon: Icons.phone,
              ),
              const SizedBox(
                height: 7,
              ),
              const customText(
                  label: "Password",
                  textStyle: TextStyle(color: primaryColor, fontSize: 18.0)),
              const SizedBox(
                height: 7,
              ),
              PasswordTExtField(
                labelText: "Enter Password",
                passcontroller: passwordcontroller,
                hintText: "Enter password",
                prefixIcon: Icons.lock,
                obscureText: true,
                suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 7,
              ),
              const customText(
                  label: "Confirm Password",
                  textStyle: TextStyle(
                    color: primaryColor,
                    fontSize: 18.0,
                  )),
              const SizedBox(
                height: 7,
              ),
              PasswordTExtField(
                labelText: "Confirm Password",
                passcontroller: confirmpasswordcontroller,
                hintText: "Confirm your password",
                prefixIcon: Icons.lock,
                obscureText: true,
                suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked; // Toggle the value of isChecked
                      });
                    },
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          },
                        ),
                        const Text(
                            "I have read and I agree to the terms and conditions"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7.0),
              Center(
                child: customButton(
                  btnLabel: "SING UP",
                  btnColor: primaryColor,
                  action: () {
                    Signup(
                        firstnamecontroller.text,
                        lastnamecontroller.text,
                        emailcontroller.text,
                        phonenocontroller.text,
                        passwordcontroller.text,
                        confirmpasswordcontroller.text);
                  },
                  // Remove the problematic line 'action: Signup(),'
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              const SizedBox(height: 7.0),
              const Divider(
                color: primaryColor,
              ),
              const SizedBox(height: 10.0),
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
                        navigatetologin();
                      },
                      child: customText(
                          label: " Login.",
                          onTap: navigatetologin2,
                          textStyle: const TextStyle(
                            color: bluecolor,
                            decoration: TextDecoration.none,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14.0),
            ],
          ),
        ),
      ),
    );
  }

  void navigatetologin() {
    Get.toNamed("/login");
  }

  void navigatetologin2() {
    Get.toNamed("/");
  }
}
