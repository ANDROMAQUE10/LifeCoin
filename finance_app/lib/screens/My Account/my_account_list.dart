import 'package:finance_app/finance_app_theme.dart';
import 'package:finance_app/screens/Home/Dashboard/models/Header/models/my_card_files.dart';
import 'package:flutter/material.dart';

class MyAccountList extends StatefulWidget {
  MyAccountList({Key? key}) : super(key: key);


  @override
  _MyAccountListState createState() => _MyAccountListState();
}

class _MyAccountListState extends State<MyAccountList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: ListView(
        children: [
        ],
      ),
    );
  }
}

List myAccount = [
   CloudStorageInfo(
    title: "Tinkoff Black",
    numOfFiles: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalStorage: "10000",
    color: FinanceAppTheme.secondaryColor,
    percentage: 35,
  ),
];
