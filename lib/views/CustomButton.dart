import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String btnLabel;
  final Color btnColor;
  //final void Function()? onPressed;
  final IconData? icon;
  final VoidCallback? action;
  final TextStyle textStyle;

  //constructor
  customButton({
    super.key,
    required this.btnLabel,
    required this.btnColor,
    //this.onPressed,
    this.icon,
    this.action,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 180,
      child: ElevatedButton(
          onPressed: action,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(btnColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(btnLabel),
              const SizedBox(
                width: 8,
              ),
              Icon(
                icon,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
