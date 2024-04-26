import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:flutter_application_1/views/CustomButton.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  final UserController userController = Get.put(UserController());

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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     InfoCard(
              //       title: const Text("first name"),
              //       subtitle: userController.fname.value,
              //     ),
              //     InfoCard(
              //       title: const Text("last name"),
              //       subtitle: userController.sname.value,
              //     ),
              //   ],
              // ),
              // InfoCard(
              //   title: const Text("Email"),
              //   subtitle: userController.email.value,
              // ),
              // InfoCard(
              //   title: const Text("Phone number"),
              //   subtitle: userController.phone.value,
              // ),

              Row(
                children: [
                  customButton(
                    btnLabel: "LOG OUT ",
                    icon: Icons.logout,
                    btnColor: primaryColor,
                    action: () => Get.offAndToNamed("/login"),
                    textStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  customButton(
                    btnLabel: "DE LETE  ACCOUNT",
                    icon: Icons.delete_forever,
                    btnColor: primaryColor,
                    action: () => Get.offAndToNamed("/login"),
                    textStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
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
  final Text title;
  final String subtitle;
  final editIcon;

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
        editIcon: const Icon(Icons.edit),
      ),
    );
  }
}
