import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

class DropDownRecentListFuture extends StatefulWidget {
  // final String firstValue;
  // final dynamic itemList;
  const DropDownRecentListFuture({
    Key? key, 
    // required this.firstValue, 
    // required this.itemList,
  }) : super(key: key);
  
  @override
  State<DropDownRecentListFuture> createState() => _DropDownListStateFuture();
}

class _DropDownListStateFuture extends State<DropDownRecentListFuture> {
  String firstValue = 'Last Day';
  // late dynamic itemList;

  @override
  Widget build(BuildContext context) {
    
    return DropdownButton<String>(
      value: firstValue,
      icon: const Icon(Icons.keyboard_arrow_down),
      iconSize: 30,
      elevation: 14,
      style: const TextStyle(color: Colors.white),
      underline: Container(
        height: 2,
        color: FinanceAppTheme.secondaryColor,
      ),
      onChanged: (String? newValue) {
        setState(() {
          firstValue = newValue!;
        });
      },
      items: <String>['Last Day', 'Last Week', 'last Month', 'Last Year'].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}