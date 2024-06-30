import 'package:first_app/quiz.dart';
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

  final List<Map<String, Object>> _questions = [
    {
      'questionText': 'What is your name?',
      'answers': ['John', 'Doe', 'Smith'],
    },
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Red', 'Blue', 'Green', 'Black'],
    },
    {
      'questionText': 'What is your hobby?',
      'answers': ['Reading', 'Writing', 'Hiking'],
    },
  ];

  void _answerQuestion() {
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

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : const Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
