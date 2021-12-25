import 'package:finance_app/finance_app_theme.dart';
import 'package:finance_app/models/rounded_button.dart';
import 'package:finance_app/screens/Input/models/rounded_input_field.dart';
import 'package:finance_app/screens/Input/models/tab_input_container.dart';
import 'package:flutter/material.dart';

class ExpenseWidget extends StatelessWidget {
  const ExpenseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TabInputContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RoundedInputField(
            labelText: 'Title',
            hintText: 'Title',
            icon: Icons.tab_rounded,
          ),
          const SizedBox(height: defaultPadding),
          Container(
            decoration: BoxDecoration(
              color: FinanceAppTheme.background,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            width: size.width,
            height: 50,
            child: const Center(child: Text('Линия категорий расходов')),
          ),
          const SizedBox(height: defaultPadding),
          const RoundedInputField(
            labelText: 'Amount',
            hintText: 'Amount Transaction',
            icon: Icons.money,
          ),
          const SizedBox(height: defaultPadding),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
            SizedBox(width: defaultPadding * 1.4),
            Icon(Icons.credit_card),
            SizedBox(width: defaultPadding / 2),
            Text('Счет расходов'),
            SizedBox(width: defaultPadding / 2),
          ]),
          const SizedBox(height: defaultPadding),
          const RoundedInputField(
              labelText: 'Date',
              hintText: 'Date Transaction',
              icon: Icons.calendar_today),
          const RoundedInputField(
              labelText: 'Comment',
              hintText: 'Comment for Transaction',
              icon: Icons.message),
          const SizedBox(height: defaultPadding),
          RoundedButton(
            text: 'Save',
            color: FinanceAppTheme.nearlyWhite,
            textColor: FinanceAppTheme.emailPasswordButton,
            press: () {
              Navigator.of(context).pushReplacementNamed('/main_screan');
            },
          )
        ],
      ),
    );
  }
}
