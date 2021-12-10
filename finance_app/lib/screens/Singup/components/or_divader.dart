// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:finance_app/constants.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          builderDivader(),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            // ignore: prefer_const_constructors
            child: Text(
              'OR', 
              style: TextStyle(
                color: kPrimaryColor, 
                fontWeight: FontWeight.w600),
            ),
          ),
          builderDivader(),
        ],
      ),
    );
  }

  Expanded builderDivader() {
    return Expanded(
      child: Divider(
        color: Color(0xFfD9D9D9),
        height: 1.5,
      ),
    );
  }
}
