import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    final String resultText;
    switch (score) {
      case 1:
        resultText = 'Good Job!';
        break;
      case 2:
        resultText = 'Great Job!';
        break;
      case 3:
        resultText = 'Excellent Job!';
        break;
      default:
        resultText = 'You did it!';
        break;
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
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: resetHandler,
            child: Text(
              'Restart Quiz',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            )),
      ],
    ));
  }
}
