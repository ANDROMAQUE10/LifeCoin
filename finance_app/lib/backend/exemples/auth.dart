// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_constructors_in_immutables, avoid_init_to_null

import 'package:finance_app/components/already_have_an_account_check.dart';
import 'package:finance_app/components/rounded_button.dart';
import 'package:finance_app/constants.dart';
import 'package:finance_app/screens/Home/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthWidget extends StatefulWidget {
  AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: _HederWidget(),
    );
  }
}

class _HederWidget extends StatelessWidget {
  const _HederWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: const [
          _FormWidget(),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  __FormWidgetState createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == "admin" && password == "admin") {
      errorText = null;

      final navigator = Navigator.of(context);
      navigator.push(MaterialPageRoute(builder: (context) => MainScreen()));
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.4,
          ),
          SizedBox(height: size.height * 0.03),
          if (errorText != null) ...[
            Text(
              'errorText',
              style: TextStyle(
                color: Colors.red,
                fontSize: defaultPadding,
              ),
            ),
            SizedBox(height: size.height * 0.03),
          ],
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(30)),
            child: TextField(
              controller: _loginTextController,
              decoration: InputDecoration(
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
                color: secondaryColor,
                borderRadius: BorderRadius.circular(30)),
            child: TextField(
              controller: _passwordTextController,
              obscureText: true,
              decoration: InputDecoration(
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
          RoundedButton(
            text: 'LOGIN',
            press: _auth,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(press: _registration),
        ],
      ),
    );
  }
}
