import 'package:finance_app/models/text_field_container.dart';
import 'package:finance_app/finance_app_theme.dart';
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
        decoration: const InputDecoration(
          hintText: 'Password',
          border: InputBorder.none,
          icon: Icon(
            Icons.lock,
            color: FinanceAppTheme.secondaryColor,
          ),
          suffixIcon: Icon(Icons.visibility, color: FinanceAppTheme.secondaryColor),
        ),
      ),
    );
  }
}
