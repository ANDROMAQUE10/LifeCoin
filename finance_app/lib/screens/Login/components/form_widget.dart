// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:finance_app/components/already_have_an_account_check.dart';
import 'package:finance_app/components/rounded_button.dart';
import 'package:finance_app/constants.dart';
import 'package:finance_app/screens/Home/main_screen.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == "admin" && password == "admin") {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main_screan');
    } else {
      errorText = 'Неверный логин или пароль';
    }
    setState(() {});
  }

  void _registration() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final errorText = this.errorText;

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            Image.asset("assets/images/lifecoin-logo-horizontal.png",),
            SizedBox(height: size.height * 0.05),
            if (errorText != null) ...[
              Text(
                'Неверный логин или пароль',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: defaultPadding,
                ),
              ),
            ],
            SizedBox(height: size.height * 0.02),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: formColor,
                  borderRadius: BorderRadius.circular(30)),
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
                  color: formColor,
                  borderRadius: BorderRadius.circular(30)),
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
              text: 'LOGIN',
              press: _auth,
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(press: _registration),
          ],
        ),
      ),
    );
  }
}

