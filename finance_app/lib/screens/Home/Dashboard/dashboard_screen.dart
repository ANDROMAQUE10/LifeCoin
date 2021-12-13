// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:finance_app/backend/services/responsive.dart';
import 'package:finance_app/finance_app_theme.dart';
import 'package:flutter/material.dart';

import 'models/Header/heder.dart';
import 'models/Recent Transaction Future/recent_transaction_future.dart';
import 'models/Resent Transaction/recent_transaction.dart';
import 'models/Storage Details/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Heder(),
                      SizedBox(height: defaultPadding),
                      RecentTransactions(),
                      if (Responsive.isMobile(context))
                      SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) 
                      StarageDetails(),
                      SizedBox(height: defaultPadding),
                      RecentTransactionsFuture(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StarageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
