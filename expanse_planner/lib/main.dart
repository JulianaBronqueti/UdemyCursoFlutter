import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      title: "Little potato",
      amount: 9.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: "Big potato",
      amount: 19.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expanse Planner'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Card(
                child: Text('CHART'),
              ),
            ),
            Column(
              children: transactions.map((transaction) {
                return Card(
                    child: Row(children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    )),
                    child: Text(
                      transaction.amount.toString(),
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Text(
                            transaction.title,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.all(5),
                            child: Text(
                              transaction.date.toString(),
                              style: TextStyle(color: Colors.grey),
                            )),
                      ])
                ]));
              }).toList(),
            )
          ],
        ));
  }
}
