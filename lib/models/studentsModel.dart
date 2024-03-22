import 'package:http/http.dart' as http;

class StudentModel {
  //properties
  final String admissionnum;
  final String sname;
  final String? email;

  //constructor
  StudentModel({
    required this.admissionnum,
    required this.sname,
    this.email,
  });
  //factory constructor
  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      admissionnum: json['admissionnum'],
      sname: json['sname'] ?? '',
      email: json['email'] ?? '',
    );
  }
  //function to get students list
  // Future<void>? getStudentsList() async {
  //   //fetch data from the server
  //   http.Response response = await http
  //       .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  // }
}
