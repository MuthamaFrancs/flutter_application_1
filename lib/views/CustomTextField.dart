import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

// ignore: must_be_immutable
class customTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  String? hintText;
  IconData? icon;
  final bool obscureText;
  IconData? Iconsuffix;

  //this is a constructor
  customTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.hintText,
    this.icon,
    this.obscureText = false,
    this.Iconsuffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),

        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor)),
        prefixIcon: Icon(icon),
        hintText: hintText,
        suffixIcon: Icon(Iconsuffix),

        // suffixIcon: const Icon(Icons.visibility_off),
      ),
      obscureText: obscureText,
    );
  }
}
