import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;

  const Quiz(this.answerQuestion, this.questions, this.questionIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        Question(
            questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }),
      ],
    );
  }
}