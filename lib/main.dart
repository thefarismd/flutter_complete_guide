import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What\'s is your favourite color?',
    //   'What\'s your favourite animal?'
    // ];

    //Mapping
    var questions = [
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
        body: Column(children: [
          Question(questions[_questionIndex]['questionText']),
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
        ]),
      ),
    );
  }
}
