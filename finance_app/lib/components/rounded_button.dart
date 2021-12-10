// ignore_for_file: prefer_const_constructors

import 'package:finance_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key, 
    required this.text, 
    required this.press, 
    this.color = secondaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: size.width * 0.8,
        padding: EdgeInsets.all(2),
        color: formColor,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(secondaryColor),
              fixedSize: MaterialStateProperty.all(size *0.08),
            ),
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
