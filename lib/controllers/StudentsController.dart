import 'package:get/get.dart';

class StudentsController extends GetxController {
  final studentsList = [].obs;
  updateStudentList(list) {
    studentsList.value = (list);
  }
}
