import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:flutter_application_1/services/authentication.dart';
import 'package:flutter_application_1/views/CustomButton.dart';
import 'package:flutter_application_1/views/CustomPasswordTxtField.dart';
import 'package:flutter_application_1/views/CustomTextField.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  final UserController userController = Get.put(UserController());
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController secondnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phonenoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Center(child: Text('Profile')),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: whitecolor,
                child: Image.asset(
                  "assets/images/finallogo.jpg",
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(height: 10.0),
              Obx(
                () => Text(
                  " Hello ${userController.fname.value.toUpperCase()} ${userController.sname.value.toUpperCase()} ",
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Obx(
                () => Text(
                  " ${userController.email.value.toLowerCase()} ",
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              Obx(
                () => Text(
                  " ${userController.phone.value} ",
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //hardcode userStreaks
              const Text(
                "We help you keep track of your Chapel attendance.\n Soo far you have attended 10 🔥chapel services ",
              ),
              const SizedBox(height: 10.0),

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  child: Container(
                    height: 200,
                    margin: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Obx(
                                      () => custom_text_field(
                                        autofocus: true,
                                        labelText: "",
                                        prefixIcon: Icons.person,
                                        controller: firstnameController,
                                        hintText:
                                            "${userController.fname.value}",
                                      ),
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
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Obx(
                                      () => custom_text_field(
                                        autofocus: true,
                                        labelText: "",
                                        prefixIcon: Icons.person,
                                        controller: secondnameController,
                                        hintText:
                                            "${userController.sname.value}",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Obx(
                            () => custom_text_field(
                              labelText: "phone",
                              controller: phonenoController,
                              hintText: "${userController.fname.value}",
                              prefixIcon: Icons.email,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Obx(
                            () => custom_text_field(
                              labelText: "email",
                              controller: emailController,
                              hintText: "${userController.email.value}",
                              prefixIcon: Icons.phone,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PasswordTExtField(
                            labelText: "Password",
                            passcontroller: passwordController,
                            hintText: "Enter new password",
                            prefixIcon: Icons.lock,
                            obscureText: true,
                            suffixIcon: Icons.visibility_off_rounded,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PasswordTExtField(
                            labelText: "Confirm Password",
                            passcontroller: confirmpasswordController,
                            hintText: "Confirm new password",
                            prefixIcon: Icons.lock,
                            obscureText: true,
                            suffixIcon: Icons.visibility_off_rounded,
                          ),
                          const Divider(
                            color: primaryColor,
                          ),
                          customButton(
                            btnLabel: "UPDATE ",
                            btnColor: primaryColor,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                            icon: Icons.update,
                            action: () => UpdateUserDetails(
                                firstnameController.text,
                                secondnameController.text,
                                emailController.text,
                                phonenoController.text,
                                passwordController.text),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton(
                    btnLabel: "LOG OUT ",
                    icon: Icons.logout,
                    btnColor: primaryColor,
                    action: () => Get.offAndToNamed("/login"),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  customButton(
                    btnLabel: "DELETE ACCOUNT",
                    icon: Icons.delete_forever,
                    btnColor: primaryColor,
                    action: () => Delete(userController.email.value),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: redColor,
                    ),
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

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;

  InfoCard({
    required this.title,
    required this.subtitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.edit),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
