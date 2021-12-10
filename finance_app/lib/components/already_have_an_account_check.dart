// ignore_for_file: prefer_const_constructors

import 'package:finance_app/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function()? press;
  const AlreadyHaveAnAccountCheck({
    Key? key, 
    this.login = true,  
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Text(
          login ? 'Don`t have an Account? ' : 'Already have an Account? ',
          style: TextStyle(color: formColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sing Up' : 'Sing In',
            style: TextStyle(
              color: formColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
