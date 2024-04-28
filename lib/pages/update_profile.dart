import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  final TextEditingController controller;
  final Text labelText;

  const Update({
    super.key,
    required this.controller,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AlertDialog(
          title: labelText,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: controller,
                decoration: const InputDecoration(labelText: 'exampletext'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
