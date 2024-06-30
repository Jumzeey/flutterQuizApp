import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;

  const Result(this.totalScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (totalScore <= 12) {
      resultText = 'Pretty likable';
    } else if (totalScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetHandler, child: const Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
