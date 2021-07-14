import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          'Black',
          'Red',
          'White',
          'Green',
        ],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          'Dog',
          'Cat',
          'Hamster',
          'Bird',
        ],
      },
      {
        'questionText': 'What\'s your favorite italian dish?',
        'answers': [
          'Spaghetti',
          'Lasagna',
          'Pizza',
          'Italian sticks',
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText'].toString()),
            for (var answer
                in (questions[_questionIndex]['answers'] as List<String>))
              Answer(_answerQuestion, answer),
          ],
        ),
      ),
    );
  }
}
