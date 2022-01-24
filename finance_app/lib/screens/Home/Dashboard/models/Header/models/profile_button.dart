import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton.icon(
          label: const Text("My Profile"),
          icon: const Icon(Icons.perm_contact_calendar),
          style: TextButton.styleFrom(
            backgroundColor: FinanceAppTheme.secondaryColor,
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding * 2.1,
              vertical: defaultPadding * 0.7,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
