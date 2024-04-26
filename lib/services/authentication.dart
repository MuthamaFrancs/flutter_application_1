import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const String baseUrl = "https://class-26.com/Musau_Students";
final UserController userController = Get.put(UserController());

Future<void> login(String username, String password) async {
  try {
    http.Response response = await http.get(
        Uri.parse('$baseUrl/login.php?email=$username&password=$password'));

    if (response.statusCode == 200) {
      var serverResponse = json.decode(response.body);
      int _LoginState = serverResponse['success'];

      var userData = serverResponse['data'][0];
      userController.updateDetails(
        userData['fname'],
        userData['sname'],
        userData['email'],
        userData['phone'],
      );
      print(userData);
      if (_LoginState == 1) {
        Get.toNamed("/landingpage");

        Get.snackbar("Sucessful Login", "");
      } else {
        Get.snackbar("Error", "Invalid username or password");
      }
    } else {
      print("server Error ${response.statusCode}");
    }
  } on Exception catch (e) {
    // TODO
    print('Error: $e');
    Get.snackbar("Error", "An error occured");
  }
}

Future<void> Signup(String firstname, String secondname, String email,
    String phone, String password, String confirmPassword) async {
  try {
    if (firstname.isNotEmpty ||
        secondname.isNotEmpty ||
        email.isNotEmpty ||
        phone.isNotEmpty ||
        password.isNotEmpty ||
        confirmPassword.isNotEmpty) {
      if (password != confirmPassword) {
        Get.snackbar("Error", "Passwords do not match");
      } else {
        http.Response response = await http.get(
          Uri.parse(
            '$baseUrl/create.php?fname=$firstname&sname=$secondname&email=$email&phone=$phone&password=$password',
          ),
        );
        print(response.body);
        if (response.statusCode == 200) {
          var serverResponse = json.decode(response.body);
          int SignupState = serverResponse['success'];

          if (SignupState == 1) {
            Get.offAndToNamed("/login");

            Get.snackbar("Successful Signup", "");
          } else {
            // Assuming the server response includes an 'error' key for error messages
            String errorMessage =
                serverResponse['error'] ?? "An unknown error occurred.";
            Get.snackbar("Error", errorMessage);
          }
        } else {
          // Handle non-200 status codes
          Get.snackbar("Error",
              "Server responded with status code ${response.statusCode}");
        }
      }
    }
    // Get.dialog(AlertDialog(
    // title: Text("Error"),
    // content: const Text("All fields are required"),
    // actions: [
    // TextButton(
    // onPressed: () {
    // Get.back();
    // },
    // child: const Text("OK"),
    // )
    // ],
    // ));
  } on Exception catch (e) {
    // Log the exception for debugging purposes
    debugPrint('Error caught by exception block: $e');
    // Provide a more specific error message to the user
    Get.snackbar("Error",
        "An error occurred while accessing the database. Please try again later.");
  }
}
