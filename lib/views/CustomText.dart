import 'package:flutter/material.dart';

class customText extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final TextStyle textStyle;
  final FontStyle? fontStyle;
  //constructor
  const customText({
    super.key,
    required this.label,
    required this.textStyle,
    this.onTap,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        label,
        style: textStyle,
      ),
    );
  }
}
