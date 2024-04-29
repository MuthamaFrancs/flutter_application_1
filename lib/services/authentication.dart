import 'dart:convert';

import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/users_controller.dart';
import 'package:flutter_application_1/views/CustomAttendanceWidget.dart';
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
      // print(_LoginState);
      if (serverResponse['message'] == "No such user") {
        Get.snackbar("User not found", "Try signing up instead");
      }
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
    print('Error: $e');
    Get.snackbar(
        "Error", "Check  your internet connection and try again later.");
  }
}

Future<void> Signup(
  String firstname,
  String secondname,
  String email,
  String phone,
  String password,
  String confirmPassword,
) async {
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
  } on Exception catch (e) {
    // Log the exception for debugging purposes
    debugPrint('Error caught by exception block: $e');
    // Provide a more specific error message to the user
    Get.snackbar("Error",
        "An error occurred while accessing the database. Please try again later.");
  }
}

// lets update the user details here
Future<void> UpdateUserDetails(
  String firstname,
  String secondname,
  String email,
  String phone,
  String password,
) async {
  //some null checking
  if (firstname.isEmpty ||
      secondname.isEmpty ||
      email.isEmpty ||
      phone.isEmpty) {
    Get.snackbar(
      "Error ",
      "Kindly fill all fields",
    );
  }

  http.Response response = await http.get(
    Uri.parse(
      '$baseUrl/update.php?fname=$firstname&sname=$secondname&email=$email&phone=$phone&password=$password',
    ),
  );
  print(response.body);
  if (response.statusCode == 200) {
    print(response.statusCode);
    var serverResponse = json.decode(response.body);
    var userData = serverResponse['data'][0];

    userController.updateDetails(
      firstname,
      secondname,
      email,
      phone,
    );

    print(userData);
    Get.snackbar("Success", "Updated Sucessfully");
  } else {
    Get.snackbar("Error", "Unable to update");
  }
}

//let us delete the user
Future<void> Delete(
  String email,
) async {
  final String encodedEmail = Uri.encodeComponent(email);
  final String url = '$baseUrl/delete.php?email=$encodedEmail';

  http.Response response = await http.get(
    Uri.parse(url),
  );
  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = jsonDecode(response.body);
    if (responseData['success'] == 1) {
      Get.snackbar("Success", "User deleted successfully!");
      Get.offAndToNamed("/registration");
    } else {
      Get.snackbar("Unsuccessful",
          "User deletion failed. Contact Developer for more info.");
    }
  } else {
    Get.snackbar("Unsuccessfull", "Contact Developer for more info");
  }
}
