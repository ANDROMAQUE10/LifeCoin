import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key, 
    required this.text, 
    required this.press, 
    this.color = FinanceAppTheme.secondaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: size.width * 0.8,
        padding: const EdgeInsets.all(2),
        color: FinanceAppTheme.emailPasswordButton,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(FinanceAppTheme.secondaryColor),
              fixedSize: MaterialStateProperty.all(size *0.08),
            ),
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
