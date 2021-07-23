import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s the best color?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Red', 'score': 0},
        {'text': 'White', 'score': 0},
        {'text': 'Yellow <3', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s the best animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 0},
        {'text': 'Tortoise', 'score': 0},
        {'text': 'Bird', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s the best italian dish?',
      'answers': [
        {'text': 'Spaghetti', 'score': 0},
        {'text': 'Pizza', 'score': 1},
        {'text': 'Lasagna', 'score': 0},
        {'text': 'Italian breadsticks', 'score': 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQusetionFunction: _answerQuestion)
            : Result("You did !it!"),
      ),
    );
  }
}
