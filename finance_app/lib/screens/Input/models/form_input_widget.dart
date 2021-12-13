import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class FormInpitWidget extends StatelessWidget {
  const FormInpitWidget({
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding * 0.8),
        child: Container(
          padding: const EdgeInsets.all(defaultPadding * 3),
          decoration: const BoxDecoration(
            color: FinanceAppTheme.secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Account DT",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Account Ct",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
}
}
