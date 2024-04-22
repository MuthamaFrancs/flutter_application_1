import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const String baseUrl = "https://class-26.com/Musau_Students";

Future<void> login(String username, String password) async {
  try {
    http.Response response = await http.get(
        Uri.parse('$baseUrl/login.php?email=$username&password=$password'));

    if (response.statusCode == 200) {
      var serverResponse = json.decode(response.body);
      int _LoginState = serverResponse['success'];
      var userData = serverResponse['data'][0];
      print('object $userData');
      if (_LoginState == 1) {
        final UserController userController = Get.put(UserController());
        userController.updateDetails(
          userData['fname'],
          userData['sname'],
          userData['email'],
          userData['phone'],
        );
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
    // var body = {
    // 'fname': firstname.trim(),
    // 'sname': secondname.trim(),
    // 'email': email.trim(),
    // 'phone': phone.trim(),
    // 'password': password.trim(),
    // };
    if (password != confirmPassword) {
      Get.snackbar("Error", "Passwords do not match");
    } else {
      http.Response response = await http.get(
        Uri.parse(
            '$baseUrl/create.php?fname=$firstname&sname=$secondname&email=$email&phone=$phone&password=$password'),
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // }
      );
      print(response.body);
      if (response.statusCode == 200) {
        var serverResponse = json.decode(response.body);
        int SignupState = serverResponse['success'];
        var userData = serverResponse['data'][0];
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
  } on Exception catch (e) {
    // Log the exception for debugging purposes
    debugPrint('Error caught by exception block: $e');
    // Provide a more specific error message to the user
    Get.snackbar("Error",
        "An error occurred while accessing the database. Please try again later.");
  }
}
