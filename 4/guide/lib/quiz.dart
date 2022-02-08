import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int i;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.i});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[i]['questionText'],
        ),
        ...(questions[i]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
