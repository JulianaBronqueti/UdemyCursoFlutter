// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// Outro jeito de escrever uma função que abriga só uma linha de código em si
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = ["What's your favorite color?", "What's your favorite food?"];
  var questionIndex = 0;
  void changeQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: changeQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: changeQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
