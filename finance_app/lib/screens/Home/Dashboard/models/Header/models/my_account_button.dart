import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class MyAccountButton extends StatelessWidget {
  const MyAccountButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton.icon(
          label: const Text("My Account"),
            icon: const Icon(Icons.account_balance),
            style: TextButton.styleFrom(
              backgroundColor: FinanceAppTheme.secondaryColor,
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 1.5,
                vertical:
                    defaultPadding * 0.7,
              ),
            ),
            onPressed: () {},
        ),
      ],
    );
  }
}
