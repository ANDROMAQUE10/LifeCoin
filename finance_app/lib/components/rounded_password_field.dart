// ignore_for_file: prefer_const_constructors, file_names

import 'package:finance_app/components/text_field_container.dart';
import 'package:finance_app/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _passwordController = TextEditingController();

    return TextFieldContainer(
      child: TextField(
        controller: _passwordController,
        onChanged: onChanged,
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
    );
  }
}
