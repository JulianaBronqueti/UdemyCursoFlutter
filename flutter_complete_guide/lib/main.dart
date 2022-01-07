// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';

// Outro jeito de escrever uma função que abriga só uma linha de código em si
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    "What's your favorite color?",
    "What's your favorite food?"
  ];
  var _questionIndex = 0;
  void _changeQuestion() {
    setState(() {
      if (_questionIndex + 1 < _questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _changeQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
