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
  final _questions = const [
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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
