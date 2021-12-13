// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InputFormField extends StatelessWidget {
  final String lableText;
  final String hintText;
  const InputFormField({
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



// class InputTextField {
//   final String? lableText;
//   final String? hintText;

//   InputTextField({
//     this.lableText, 
//     this.hintText
//   })
// }


// List inputTextField = [
//   InputTextField
// ];