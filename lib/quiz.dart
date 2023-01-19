import 'package:firstapp/question.dart';
import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function questionAnswer;

  const Quiz(this.questionIndex, this.questionAnswer, this.questions,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
              (answer) => Answer(
                  () => questionAnswer(answer['score']), answer['choice']),
            )
            .toList(),
      ],
    );
  }
}
