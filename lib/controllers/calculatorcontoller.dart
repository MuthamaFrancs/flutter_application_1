import 'package:get/get.dart';

class Calculatorcontroller extends GetxController {
  var sum = 0.0.obs;
  updateSum(double newSum) {
    sum.value = newSum;
  }
}
