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
        'answers': ['Back', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'What\'s your favourite instructor?',
        'answers': ['Max', 'Max', 'Faris', 'Faris']
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
