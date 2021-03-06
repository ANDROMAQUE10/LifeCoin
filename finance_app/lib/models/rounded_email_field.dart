import 'package:finance_app/models/text_field_container.dart';
import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class RoundedEmailField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedEmailField({
    Key? key,
    this.hintText = 'Your Email',
    this.icon = Icons.person,
    required this.onChanged, 
  }) : super(key: key);

  @override
  State<RoundedEmailField> createState() => _RoundedEmailFieldState();
}

class _RoundedEmailFieldState extends State<RoundedEmailField> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return TextFieldContainer(
      child: TextField(
        controller: _emailController,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          icon: Icon(
            widget.icon,
            color: FinanceAppTheme.secondaryColor,
          ),
        ),
      ),
    );
  }
}
