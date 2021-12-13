// ignore_for_file: unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

class RecentTransactionModelFuture extends StatefulWidget {
  RecentTransactionModelFuture({Key? key}) : super(key: key);

  @override
  _RecentTransactionModelFutureState createState() => _RecentTransactionModelFutureState();
}

// Урок 51: "Основы работы с данными - работаем с JSON"

class _RecentTransactionModelFutureState extends State {
  // Future<List<Transaction>> _getTransactions() async {
    // Map<String, dynamic> data = await jsonDecode('lib/test.json');
    // var jsonResult = Transaction.fromJson(data);

  //   List<Transaction> transactions = [];
    // for (var i in jsonResult) {
  //     Transaction transaction = Transaction(
  //       i['index'],
  //       i['transactionName'],
  //       i['transactionDate'],
  //       i['transactionAmount'],
  //       i['transactionPicture'],
  //     );
  //     transactions.add(transaction);
  //   }
  //   print(transactions.length);
  //   return transactions;
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: _getTransactions(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return const Center(
            child: Text('Loading...'),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(snapshot.data[index].transactionPicture),
                ),
                title: Text(snapshot.data[index].transactionName),
                subtitle: Text(snapshot.data[index].transactionAmount),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        snapshot.data[index],
                      ),
                    ),
                  );
                },
              );
            },
          );
        }
      },
    );
  }
}

class DetailPage extends StatelessWidget {
  final Transaction transaction;

  const DetailPage(
    this.transaction, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(transaction.transactionName),
      ),
    );
  }
}

class Transaction {
  final int index;
  final String transactionName;
  final String transactionDate;
  final int transactionAmount;
  final String picture;

  Transaction(
    this.index,
    this.transactionName,
    this.transactionDate,
    this.transactionAmount,
    this.picture,
  );
}
