import 'package:get/get.dart';

class Controller extends GetxController {
  var currentIndex = 0.obs;
  updateSelectedPage(int index) => currentIndex.value = index;
}
