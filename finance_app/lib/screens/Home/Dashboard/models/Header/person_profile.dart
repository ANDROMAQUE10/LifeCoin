import 'package:finance_app/backend/services/responsive.dart';
import 'package:flutter/material.dart';

import 'models/person_profile_card.dart';


class PersonProfile extends StatelessWidget {
  const PersonProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          Text(
            "LifeCoin",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const PersonProfileCard(),
      ],
      
    );
  }
}



