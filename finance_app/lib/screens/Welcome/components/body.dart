// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:finance_app/components/rounded_button.dart';
import 'package:finance_app/constants.dart';
import 'package:finance_app/screens/Login/login_screen.dart';
import 'package:finance_app/screens/Singup/singup_screen.dart';
import 'package:finance_app/screens/Welcome/components/background.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO FINANCE APP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: 'SING UP',
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SingUpScreen();
                  },
                ),
              );
              },
            ),
          ],
        ),
      ),
    );
  }
}
