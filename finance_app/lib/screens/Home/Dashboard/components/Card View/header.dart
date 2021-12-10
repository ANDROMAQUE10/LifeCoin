// igno'../../../controllers/menu_controller.dart'

// ignore_for_file: prefer_const_constructors

import 'package:finance_app/constants.dart';
import 'package:finance_app/responsive.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        ProfileCard(),
      ],
      
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(Icons.perm_contact_calendar),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 1.5),
              child: Text("Person Name"),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

