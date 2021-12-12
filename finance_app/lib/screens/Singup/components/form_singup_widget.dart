// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors, unused_import

import 'package:finance_app/backend/services/auth_service.dart';
import 'package:finance_app/components/already_have_an_account_check.dart';
import 'package:finance_app/components/rounded_button.dart';
import 'package:finance_app/components/rounded_input_field.dart';
import 'package:finance_app/components/rounded_password_field.dart';
import 'package:finance_app/constants.dart';

import 'package:finance_app/screens/Home/main_screen.dart';
import 'package:finance_app/screens/Login/login_screen.dart';
import 'package:finance_app/screens/Singup/components/or_divader.dart';
import 'package:finance_app/screens/Singup/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class FormSingUpWidget extends StatelessWidget {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final authService = Provider.of<AuthService>(context);

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/lifecoin-logo-horizontal.png",
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: formColor, borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: _loginTextController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Your Email',
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.person,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: formColor, borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: _passwordTextController,
                obscureText: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Password',
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.lock,
                    color: secondaryColor,
                  ),
                  suffixIcon: Icon(Icons.visibility, color: secondaryColor),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: 'SINGUP',
              press: () async {
                await authService.createUserWithEmailAndPassword(
                    _loginTextController.text, _passwordTextController.text);
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.of(context).pushReplacementNamed('/login');
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
