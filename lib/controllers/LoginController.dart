import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = 'example@gmail.com'.obs;
  var password = ''.obs;
  var isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed('/home');
  }
}
