import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class PersonProfileCard extends StatelessWidget {
  const PersonProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: FinanceAppTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Icon(Icons.perm_contact_calendar),
            const Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: defaultPadding / 1.5),
              child: Text("Person Name"),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}