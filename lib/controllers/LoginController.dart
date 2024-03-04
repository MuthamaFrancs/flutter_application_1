import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = 'example@gmail.com';
  var password = 'admin';
  var isPasswordVisible = false.obs;

  void setEmail(String value) {
    email = value;
  }

  void setPassword(String value) {
    password = value;
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed('/home');
  }
}
