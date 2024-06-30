import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue, // foreground (text) color
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 10), // button padding
        ),
        child: Text(answerText),
      ),
    );
  }
}
