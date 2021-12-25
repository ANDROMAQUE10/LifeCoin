import 'package:finance_app/finance_app_theme.dart';
import 'package:finance_app/screens/Input/models/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData icon;
  const RoundedInputField({
    Key? key,
    this.hintText = '',
    this.icon = Icons.person, 
    this.labelText = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: FinanceAppTheme.nearlyWhite,
          ),
        ),
      ),
    );
  }
}
