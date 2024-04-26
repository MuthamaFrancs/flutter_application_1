import 'package:get/get.dart';

class UserController extends GetxController {
  var fname = "".obs;
  var sname = "".obs;
  var email = "".obs;
  var phone = "".obs;
  var streaks = 0.obs;

  void updateDetails(
    String firstname,
    String secondname,
    String email,
    String phone,
  ) {
    fname.value = firstname;
    sname.value = secondname;
    this.email.value = email;
    this.phone.value = phone;
  }
}
