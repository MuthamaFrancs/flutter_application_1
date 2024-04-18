import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/LoginController.dart';
import 'package:flutter_application_1/services/authentication.dart';
import 'package:flutter_application_1/views/CustomAppbar.dart';
import 'package:flutter_application_1/views/CustomAttendanceWidget.dart';
import 'package:flutter_application_1/views/CustomProgressbar.dart';
import 'package:flutter_application_1/views/CustomVerses.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    //automaticLeading = false;
    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                CustomAppbar(
                    title: "Welcome ${getName()}!",
                    subtitle: "Sing Up your Chapel Attendance!"),
                const CustomProgressBar(),
                const CustomVerses(),
                const SizedBox(height: 10.0),
                const CustomAttendance(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<String> getName(String firstname) async {
    http.Response response =
        await http.get(Uri.parse('$baseUrl/login.php?fname=$firstname'));
    print(response);
    return response.body;
  }
}
