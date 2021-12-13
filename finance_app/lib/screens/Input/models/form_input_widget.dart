import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class FormInpitWidget extends StatelessWidget {
  const FormInpitWidget({
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: FinanceAppTheme.secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Account DT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: defaultPadding),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Account CT",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    // SafeArea(
    //   child: Container(
    //     padding: const EdgeInsets.all(defaultPadding * 0.8),
    //     child: Container(
    //       padding: const EdgeInsets.all(defaultPadding * 3),
    //       decoration: const BoxDecoration(
    //         color: FinanceAppTheme.secondaryColor,
    //         borderRadius: BorderRadius.all(Radius.circular(10)),
    //       ),
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           CalendarWidget(),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Account DT",
              //       style: Theme.of(context).textTheme.subtitle1,
              //     ),
              //   ],
              // ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Account Ct",
              //       style: Theme.of(context).textTheme.subtitle1,
              //     ),
              //   ],
              // ),
    //         ]
    //       ),
    //     ),
    //   ),
    // );
}
}
