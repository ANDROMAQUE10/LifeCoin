import 'package:finance_app/finance_app_theme.dart';
import 'package:finance_app/screens/Input/models/expense_widget.dart';
import 'package:finance_app/screens/Input/models/income_widget.dart';
import 'package:finance_app/screens/Input/models/transaction_widget.dart';
import 'package:flutter/material.dart';

class FormInpitWidget extends StatelessWidget {
  const FormInpitWidget({
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar( 
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Expense'),
                Tab(text: 'Income'),
                Tab(text: 'Translation'),
              ],
              indicatorColor: FinanceAppTheme.emailPasswordButton,
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              unselectedLabelStyle: TextStyle(fontStyle: FontStyle.normal, fontSize: 18),
            ),
          title: const Center(child: Text('Form Input')),
          backgroundColor: FinanceAppTheme.secondaryColor,
          ),
          body: const TabBarView(
            children: [
              ExpenseWidget(),
              IncomeWidget(),
              TransactionWidget(),
            ]
          ),
        ),
      ),
    );
}
}



