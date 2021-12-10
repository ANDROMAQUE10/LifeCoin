// ignore_for_file: prefer_const_constructors

import 'package:finance_app/components/rounded_button.dart';
import 'package:finance_app/constants.dart';
import 'package:finance_app/screens/Input/components/background.dart';
import 'package:finance_app/screens/Input/components/input_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'InputForm',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Column(
              children: <Widget>[
                InputForm(
                  lableText: 'Title',
                  hintText: 'Введение название операции',
                ),
                InputForm(
                  lableText: 'Amount',
                  hintText: 'Введите сумму счета',
                ),
                InputForm(
                  lableText: 'Date',
                  hintText: 'dd.mm.yyyy',
                ),
                InputForm(
                  lableText: 'Set time',
                  hintText: 'Введите время операции',
                ),
                InputForm(
                  lableText: 'Category',
                  hintText: 'Введите категорию одним-двумя словами (нечеткий поиск)',
                ),
                InputForm(
                  lableText: 'Partner',
                  hintText: 'Введите контрагента (нечеткий поиск)',
                ),
                DropDownList(
                ),
                RoundedButton(
                  text: 'Complited',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DropDownList extends StatefulWidget {
  // final String firstValue;
  // final dynamic itemList;
  const DropDownList({
    Key? key, 
    // required this.firstValue, 
    // required this.itemList,
  }) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String firstValue = 'Tinkof Black';
  // late dynamic itemList;

  @override
  Widget build(BuildContext context) {
    
    return DropdownButton<String>(
      value: firstValue,
      icon: const Icon(Icons.account_balance_wallet_rounded),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: kPrimaryColor),
      underline: Container(
        height: 2,
        color: kPrimaryColor,
      ),
      onChanged: (String? newValue) {
        setState(() {
          firstValue = newValue!;
        });
      },
      items: <String>['Tinkof Black', 'Sber Gold', 'Zenit', 'Visa'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
