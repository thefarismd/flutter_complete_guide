import 'package:flutter/material.dart';
// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

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

    // if (_questionIndex < questions.length) {
    //   print('We have more questions!');
    // }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What\'s is your favourite color?',
    //   'What\'s your favourite animal?'
    // ];

    //Mapping
    var _questions = const [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          {'text': 'Back', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          {'text': 'Rabbit', 'score': 1},
          {'text': 'Snake', 'score': 2},
          {'text': 'Elephant', 'score': 3},
          {'text': 'Lion', 'score': 4}
        ]
      },
      {
        'questionText': 'What\'s your favourite instructor?',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Faris', 'score': 2},
          {'text': 'Faris', 'score': 2}
        ]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
