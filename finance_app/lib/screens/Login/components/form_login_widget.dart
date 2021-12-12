// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_init_to_null

import 'package:finance_app/backend/services/auth_service.dart';
import 'package:finance_app/components/already_have_an_account_check.dart';
import 'package:finance_app/components/rounded_button.dart';
import 'package:finance_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormLoginWidget extends StatefulWidget {
  const FormLoginWidget({Key? key}) : super(key: key);

  @override
  _FormLoginWidgetState createState() => _FormLoginWidgetState();
}

class _FormLoginWidgetState extends State<FormLoginWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String? errorText = null;

  // void _auth() {
  //   final login = _loginTextController.text;
  //   final password = _passwordTextController.text;
  //   final authService = Provider.of<AuthService>(context);
  //   final authCheack =  authService.singInWithEmailAndPassword(login, password);
  //   if (login.((value) => true)) {
  //     errorText = null;
  //     Navigator.of(context).pushReplacementNamed('/main_screan');
  //   } else {
  //     errorText = 'Неверный логин или пароль';
  //   }
  //   setState(() {});
  // }

  void _registration() {
    Navigator.of(context).pushReplacementNamed('/singup_screen');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final authService = Provider.of<AuthService>(context);

    final errorText = this.errorText;

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
              text: 'LOGIN',
              press: () {
                authService.singInWithEmailAndPassword(
                    _loginTextController.text, _passwordTextController.text);
                    Navigator.of(context).pushReplacementNamed('/main_screan');
              },
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(press: _registration),
          ],
        ),
      ),
    );
  }
}