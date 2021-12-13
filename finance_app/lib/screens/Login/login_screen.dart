
import 'package:flutter/material.dart';

import 'models/form_login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FormLoginWidget(),
    );
  }
}

