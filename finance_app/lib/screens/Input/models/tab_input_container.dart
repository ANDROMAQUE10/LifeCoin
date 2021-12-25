import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class TabInputContainer extends StatelessWidget {
  final Widget child;
  const TabInputContainer({
    Key? key, 
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: FinanceAppTheme.background,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ListView(
        children: [ Container(                  
          padding: const EdgeInsets.all(defaultPadding),
          decoration: const BoxDecoration(
            color: FinanceAppTheme.secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: child,
        ),
        ]
      ),
    );
  }
}