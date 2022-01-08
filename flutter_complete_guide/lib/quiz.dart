import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerClick;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"] as String),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerClick(answer["score"] as int), answer["text"] as String);
        }).toList()
      ],
    );
  }
}
