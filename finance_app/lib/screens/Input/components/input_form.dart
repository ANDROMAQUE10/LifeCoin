// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final String lableText;
  final String hintText;
  const InputForm({
    Key? key, 
    required this.lableText, 
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          labelText: lableText,
          border: OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
