import 'package:flutter/material.dart';
import './question.dart';

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
      'Co ty odpierdalasz?',
      "whast your fav animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
