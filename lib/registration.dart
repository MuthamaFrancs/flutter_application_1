import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/CustomButton.dart';
import 'package:flutter_application_1/views/CustomText.dart';
import 'package:flutter_application_1/views/CustomTextField.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    MaterialApp(
      home: Registration(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Registration extends StatelessWidget {
  Registration({super.key});
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
      appBar: AppBar(
        backgroundColor: whitecolor,
        foregroundColor: primaryColor,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        // A PADDING 0f 40?differ
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            customTextField(
              labelText: "Password",
              controller: passwordcontroller,
              obscureText: true,
              Iconsuffix: Icons.visibility_off,
            ),
            const SizedBox(
              height: 7,
            ),
            const customText(
                label: "Confirm Password",
                textStyle: TextStyle(color: primaryColor, fontSize: 20.0)),
            const SizedBox(
              height: 7,
            ),
            customTextField(
              labelText: "Confirm Password",
              controller: confirmpasswordcontroller,
              obscureText: true,
              Iconsuffix: Icons.visibility_off,
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      isChecked = true;
                    }),
                const Text(
                    "I have read and I agree to the terms and conditions")
              ],
            ),
            const SizedBox(height: 7.0),
            Center(
              child: customButton(
                btnLabel: "SING UP",
                btnColor: primaryColor,
                action: navigatetologin,
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 14.0),
            //ElevatedButton.icon(onPressed: (){}, icon: Icon(Icon.Google), label: const Text("Sign up using Google")),

            Center(
              child: SizedBox(
                width: 300.0,
                height: 50.0,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFFeab676)),
                      fixedSize: MaterialStatePropertyAll(Size.fromHeight(
                        40.0,
                      )),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Googlelogo.jpg", // Replace 'assets/google_logo.png' with the path to your Google logo image
                            height: 24, // Adjust the height as needed
                            width: 24, // Adjust the width as needed
                          ),
                          const SizedBox(
                              width:
                                  7), // Add space between the logo and the text
                          const Text(
                            'Sign up with Google',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void navigatetologin() {
    Get.toNamed("/login");
  }
}
