import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';

class PasswordTExtField extends StatefulWidget {
  final TextEditingController? passcontroller;
  final String labelText;
  IconData? suffixIcon;
  IconData? prefixIcon;
  final String? hintText;
  bool obscureText;

  PasswordTExtField(
      {this.passcontroller,
      this.hintText,
      required this.labelText,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      super.key});

  @override
  State<PasswordTExtField> createState() => _PasswordTExtFieldState();
}

class _PasswordTExtFieldState extends State<PasswordTExtField> {
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.passcontroller,
      obscureText: widget.obscureText ? !isPasswordVisible : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        prefixIcon: Icon(widget.prefixIcon),
        hintText: widget.hintText,
        suffixIcon: InkWell(
          onTap: togglePasswordVisibility,
          child:
              Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
