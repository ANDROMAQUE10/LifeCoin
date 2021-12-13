import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class DropDownModel extends StatefulWidget {
  // final String firstValue;
  // final dynamic itemList;
  const DropDownModel({
    Key? key,
    // required this.firstValue,
    // required this.itemList,
  }) : super(key: key);

  @override
  State<DropDownModel> createState() => _DropDownModelState();
}

class _DropDownModelState extends State<DropDownModel> {
  String firstValue = 'Tinkof Black';
  // late dynamic itemList;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: firstValue,
      icon: const Icon(Icons.account_balance_wallet_rounded),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: FinanceAppTheme.nearlyWhite),
      underline: Container(
        height: 2,
        color: FinanceAppTheme.nearlyWhite,
      ),
      onChanged: (String? newValue) {
        setState(() {
          firstValue = newValue!;
        });
      },
      items: <String>['Tinkof Black', 'Sber Gold', 'Zenit', 'Visa']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
