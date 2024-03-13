import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

// ignore: must_be_immutable
class customTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  IconData? iconData;
  String? hintText;
  IconData? prefixIcon;
  bool obscureText;
  IconData? Iconsuffix;
  final VoidCallback? togglePasswordVisibility;
  bool? autofocus;

  //this is a constructor
  customTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.Iconsuffix,
    this.iconData,
    this.togglePasswordVisibility,
    this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus ?? false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor)),
        hintText: hintText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: InkWell(
          onTap: togglePasswordVisibility,
          child: Icon(Iconsuffix),
        ),
      ),
    );
  }

  bool isPasswordVisible = false;
}
