import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQusetionFunction;

  Quiz(
      {required this.questionIndex,
      required this.questions,
      required this.answerQusetionFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText'].toString()),
        for (var answer in (questions[questionIndex]['answers']
            as List<Map<String, Object>>))
          Answer(() => answerQusetionFunction(answer['score']),
              answer['text'].toString()),
      ],
    );
  }
}
