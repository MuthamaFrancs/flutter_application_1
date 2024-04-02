import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/albummodel.dart';
import 'package:http/http.dart' as http;

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getAlbum(),
        builder: (context, data) {
          if (data.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (data.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(data.data![index].title),
                    Image.network(data.data![index].image), // Add image URL
                  ],
                );
              },
              itemCount: 10,
            );
          } else {
            throw "no dataa found!";
          }
        },
      ),
    );
  }

  Future<List<Album>> getAlbum() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    //use await and then async
    if (response.statusCode == 200) {
      //print(response.body);
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((album) => Album.fromJson(album)).toList();
    } else {
      throw "Reading failed!";
    }
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyListView(),
    );
  }
}
