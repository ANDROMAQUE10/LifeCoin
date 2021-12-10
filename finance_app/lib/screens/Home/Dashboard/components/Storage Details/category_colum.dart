import 'package:finance_app/screens/Home/Dashboard/components/indicator.dart';
import 'package:flutter/material.dart';

class CategoryColum extends StatelessWidget {
  const CategoryColum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Indicator(
          color: Color(0xff0293ee),
          text: 'Product',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: Color(0xfff8b250),
          text: 'Bokaleya',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: Color(0xff845bef),
          text: 'Medical',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: Color(0xff13d38e),
          text: 'Transport',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: Color(0xff9c27b0),
          text: 'HomePay',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: Color(0xffc51162),
          text: 'Shoping',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: Color(0xfffff3c0),
          text: 'Media',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
        Indicator(
          color: Color(0xff00bcd4),
          text: 'Restoran',
          isSquare: true,
        ),
        SizedBox(
          height: 4,
        ),
      ],
    );
  }
}