// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_init_to_null

import 'package:finance_app/backend/services/Autentification/auth_service.dart';
import 'package:finance_app/backend/services/scafdold_snack_bar.dart';
import 'package:finance_app/models/already_have_an_account_check.dart';
import 'package:finance_app/models/rounded_button.dart';
import 'package:finance_app/finance_app_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormLoginWidget extends StatefulWidget {
  const FormLoginWidget({Key? key}) : super(key: key);

  @override
  _FormLoginWidgetState createState() => _FormLoginWidgetState();
}

class _FormLoginWidgetState extends State<FormLoginWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  String? errorText = null;

  void _registration() {
    Navigator.of(context).pushReplacementNamed('/singup_screen');
  }

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
                  color: FinanceAppTheme.emailPasswordButton,
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: _loginController,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Your Email',
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.person,
                    color: FinanceAppTheme.secondaryColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: FinanceAppTheme.emailPasswordButton,
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  hintText: 'Password',
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.lock,
                    color: FinanceAppTheme.secondaryColor,
                  ),
                  suffixIcon: Icon(Icons.visibility,
                      color: FinanceAppTheme.secondaryColor),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: 'LOGIN',
              press: () async {
                await _signInWithEmailAndPassword();
              },
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(press: _registration),
          ],
        ),
      ),
    );
  }
   
  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> _signInWithEmailAndPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _loginController.text,
        password: _passwordController.text,
      )).user!;
      // ScaffoldSnackbar.of(context).show('${user.email} Добро пожаловать!');
      Navigator.of(context).pushReplacementNamed('/main_screan');
    } catch (e) {
      ScaffoldSnackbar.of(context)
          .show('Неправильный Email или Password');
    }
  }
}