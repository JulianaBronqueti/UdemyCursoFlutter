// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    {
      "questionText": "What's your favorite color?",
      "answers": ["Blue", "Red", "Yellow", "Green", "Black"]
    },
    {
      "questionText": "What's your favorite food?",
      "answers": ["Pizza", "Barbecue", "Hamburguer"]
    },
    {
      "questionText": "What's your favorite book?",
      "answers": ["Coding Interview", "HP", "Data Structures", "M.A."]
    },
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
            Question(_questions[_questionIndex]["questionText"] as String),
            ...(_questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_changeQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
