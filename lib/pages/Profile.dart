import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:flutter_application_1/views/CustomButton.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  final UserController userController = Get.put(UserController());
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
                  "assets/images/mood-love-inspiration-tender.png",
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                " ${userController.fname.value}${userController.sname.value} ",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              //hardcode userStreaks
              const Text(
                  "We help you keep track of your Chapel attendance.\n Soo far you have attended 10 🔥chapel services "),
              const SizedBox(height: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfoCard(
                    title: const Text("first name"),
                    subtitle: userController.fname.value,
                  ),
                  InfoCard(
                    title: const Text("last name"),
                    subtitle: userController.sname.value,
                  ),
                ],
              ),
              InfoCard(
                title: const Text("Email"),
                subtitle: userController.email.value,
              ),
              InfoCard(
                title: const Text("Phone number"),
                subtitle: userController.phone.value,
              ),
              Row(
                children: [
                  customButton(
                    btnLabel: "L O G  O U T ${const Icon(Icons.logout)}",
                    btnColor: primaryColor,
                    textStyle: const TextStyle(fontSize: 18, color: whitecolor),
                    action: () => Get.offAllNamed("/login"),
                  ),
                  customButton(
                    btnLabel:
                        "DELETE ACCOUNT${const Icon(Icons.delete_forever)}",
                    btnColor: redColor,
                    textStyle: const TextStyle(fontSize: 18, color: whitecolor),
                    action: () => {},
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
  final Text? title;
  final String? subtitle;
  final Align? editIcon;

  InfoCard({
    required this.title,
    required this.subtitle,
    this.editIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: InfoCard(
        title: title,
        subtitle: subtitle,
        editIcon: const Align(
          alignment: Alignment.topLeft,
          child: Icon(Icons.edit),
        ),
      ),
    );
  }
}
