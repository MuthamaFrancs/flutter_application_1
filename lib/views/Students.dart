import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/StudentsController.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/studentsModel.dart';

var name = ['John Doe', 'me'];
StudentsController studentsController = StudentsController();

class Student extends StatelessWidget {
  const Student({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Obx(() => Row(
                  children: [
                    Text("${index + 1}"),
                    Text(name[index]),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        name.removeAt(index);
                      },
                    )
                  ],
                ));
          })
    ]);
  }

  Future<void>? getStudents() async {
    http.Response response =
        await http.get(Uri.parse('https://churchapp.co.ke/students/read.php'));
    if (response.statusCode == 200) {
      var studentResponse = json.decode(response.body);
      var studentDataResponse = studentResponse['data'];
      var newlist =
          studentDataResponse.map((student) => StudentModel.fromJson(student));
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
