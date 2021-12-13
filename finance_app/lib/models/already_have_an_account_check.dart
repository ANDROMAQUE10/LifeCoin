import 'package:finance_app/finance_app_theme.dart';
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
          style: const TextStyle(color: FinanceAppTheme.emailPasswordButton),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sing Up' : 'Sing In',
            style: const TextStyle(
              color: FinanceAppTheme.emailPasswordButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
