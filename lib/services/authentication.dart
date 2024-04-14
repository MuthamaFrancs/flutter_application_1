import 'dart:convert';

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
