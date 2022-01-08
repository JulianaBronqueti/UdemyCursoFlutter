// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';
import './result.dart';

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
      "answers": [
        {"text": "Blue", "score": 6},
        {"text": "Red", "score": 7},
        {"text": "Yellow", "score": 10},
        {"text": "Green", "score": 3},
        {"text": "Black", "score": 9},
      ]
    },
    {
      "questionText": "What's your favorite food?",
      "answers": [
        {"text": "Pizza", "score": 10},
        {"text": "Hamburguer", "score": 9},
        {"text": "Salad", "score": 2},
      ]
    },
    {
      "questionText": "What's your favorite book?",
      "answers": [
        {"text": "Coding Interview", "score": 4},
        {"text": "HP", "score": 7},
        {"text": "Data Structures", "score": 3},
        {"text": "Any Machado de Assis", "score": 10},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerClick(int score) {
    setState(() {
      if (_questionIndex + 1 <= _questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });
    //print(_questionIndex);

    _totalScore += score;
    //print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerClick: _answerClick,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
