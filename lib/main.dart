import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favourite color?',
      'What\'s your favourite animal?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Text('The questions!'),
          ElevatedButton(onPressed: null, child: Text('Answer 1')),
          ElevatedButton(onPressed: null, child: Text('Answer 2')),
          ElevatedButton(onPressed: null, child: Text('Answer 3')),
        ]),
      ),
    );
  }
}
