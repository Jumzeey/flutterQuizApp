import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is your name?',
      'answers': [
        {'text': 'John', 'score': 1},
        {'text': 'Doe', 'score': 1},
        {'text': 'Smith', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 6},
        {'text': 'Blue', 'score': 1},
        {'text': 'Green', 'score': 4},
        {'text': 'Black', 'score': 10}
      ],
    },
    {
      'questionText': 'What is your hobby?',
      'answers': [
        {'text': 'Reading', 'score': 10},
        {'text': 'Writing', 'score': 5},
        {'text': 'Hiking', 'score': 1}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more question');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
